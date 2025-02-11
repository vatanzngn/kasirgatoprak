`timescale 1ns / 1ps
/* 

    KASIRGA - TOPRAK L1V DENETLEYICI
    kullanilan SRAM modeli: 1RW

    Verilerin Tutuldugu Yapilar: Veri SRAM, Etiket SRAM

    N-yollu Kümeli İlişkili Önbellek Yapısı kullanılmistir.
    Kümelerin sayısı: `L1V_YOL_SAYISI parametresi ile belirlenir.

    LRU algoritması kullanılmistir ve cikarma politikaları olarak write-allocate ve write-back kullanilmaktadir.

    Her yol için Veri SRAM(leri) ve Etiket SRAM'i bulunur.
    Veri SRAM'lerinin her biri 4 adet banktan olusur.
    Her bankin bir satirinin boyutu 32-bit'tir.

    Her yol için bir Etiket SRAM'i bulunur.

    Geçerli ve Değişti bitleri Register olarak tutulur, Yol Sayısı * Satır Sayısı kadar Geçerli ve Değişti biti bulunur.
    LRU bit(leri) Register olarak tutulur, her satır için yol başına $clog2(L1V_YOL_SAYISI) kadar bit bulunur.

    // Veriler Banking yapisi ile saklanir.
    // Banking yapisi 4 adet banktan olusur.
    // Her bank'in her satiri 32-bitlik bir veri saklar.
    // Her bankta `L1V_SATIR_SAYISI adet satir bulunur.
*/
`include "sabitler.vh"
`include "yapilandirma.vh"

module l1v_denetleyici #(
    parameter int L1V_YOL_SAYISI = `L1_VERI_ONBELLEK_YOL_SAYISI,
    parameter int L1V_SATIR_SAYISI = `L1_VERI_ONBELLEK_YOL_SATIR_SAYISI,
    parameter int ADRES_GENISLIGI = `ADRES_GENISLIGI_BIT,
    parameter int SOZCUK_GENISLIGI = `SOZCUK_GENISLIGI_BIT,
    parameter int ONEMSIZ_BIT_SAYISI = `ADRES_ONEMSIZ_BIT_SAYISI,
    parameter int SATIR_SOZCUK_SAYISI = `ONBELLEK_SATIR_SOZCUK_SAYISI,
    localparam int BANK_ADRES_GENISLIGI = $clog2(SATIR_SOZCUK_SAYISI),
    localparam int ONBELLEK_ADRES_GENISLIGI = $clog2(L1V_SATIR_SAYISI),
    localparam int ONBELLEK_YOL_GENISLIGI = $clog2(L1V_YOL_SAYISI),
    localparam int ONBELLEK_SATIR_GENISLIGI = SATIR_SOZCUK_SAYISI * SOZCUK_GENISLIGI,
    localparam int ETIKET_GENISLIGI = ADRES_GENISLIGI - ONBELLEK_ADRES_GENISLIGI - BANK_ADRES_GENISLIGI - ONEMSIZ_BIT_SAYISI
) (
    input wire clk_i,
    input wire rstn_i,

    input wire [ADRES_GENISLIGI-1:0] adres_i,
    input wire [SOZCUK_GENISLIGI-1:0] veri_i,
    input wire yaz_i,
    input wire istek_gecerli_i,

    input wire [SOZCUK_GENISLIGI/8-1:0] maske_i,

    output wire [SOZCUK_GENISLIGI-1:0] veri_o,
    output wire hazir_o,

    // SRAM'lerle iletisim
    output wire [ONBELLEK_ADRES_GENISLIGI-1:0] sram_adres_o,
    output wire [ONBELLEK_YOL_GENISLIGI-1:0] sram_yaz_indis_o, // Bit vektoru olarak yazilacak yol. eger 0 ise okuma yapilir 1 olan yola yazma yapilir.
    output wire sram_yaz_o,
    // Veri SRAM'lerle iletisim
    output wire [ONBELLEK_SATIR_GENISLIGI-1:0] veri_sram_veri_o,
    input wire [ONBELLEK_SATIR_GENISLIGI-1:0] veri_sram_veri_i[0:L1V_YOL_SAYISI-1],

    // Etiket SRAM'lerle iletisim
    output wire [ETIKET_GENISLIGI-1:0] etiket_sram_veri_o,
    input  wire [ETIKET_GENISLIGI-1:0] etiket_sram_veri_i[0:L1V_YOL_SAYISI-1],

    // VYD'yle iletisim
    output wire [ADRES_GENISLIGI-1:0] vyd_adres_o,
    output reg vyd_yaz_o,
    output reg vyd_istek_o,

    input wire vyd_hazir_i,
    input wire [ONBELLEK_SATIR_GENISLIGI-1:0] vyd_veri_i,
    output reg [ONBELLEK_SATIR_GENISLIGI-1:0] vyd_veri_o
);
  reg [ETIKET_GENISLIGI-1:0] etiket_sram_veri_yaz_cmb, etiket_sram_veri_son_yaz_r;
  reg [ONBELLEK_SATIR_GENISLIGI-1:0] veri_sram_veri_yaz_cmb, veri_sram_veri_son_yaz_r;

  reg [ONBELLEK_YOL_GENISLIGI-1:0] sram_yazilan_yol_cmb, sram_yazilan_son_yol_r;

  reg sram_yaz_cmb, sram_son_yaz_r;
  assign sram_yaz_indis_o = sram_yazilan_yol_cmb;
  assign etiket_sram_veri_o = etiket_sram_veri_yaz_cmb;
  assign veri_sram_veri_o = veri_sram_veri_yaz_cmb;
  assign sram_yaz_o = sram_yaz_cmb;

  reg [ONBELLEK_YOL_GENISLIGI-1:0] lru_r[0:L1V_YOL_SAYISI-1][0:L1V_SATIR_SAYISI-1];
  reg [ONBELLEK_YOL_GENISLIGI-1:0] lru_ns[0:L1V_YOL_SAYISI-1];
  // Geçerli ve Değişti bitleri Register olarak tutulur, Yol Sayısı * Satır Sayısı kadar Geçerli ve Değişti biti bulunur.
  reg gecerli_r[0:L1V_YOL_SAYISI-1][0:L1V_SATIR_SAYISI-1];
  reg gecerli_ns;  // yazilacak yol ve satir belli oldugu icin 1 bit yeter.
  reg gecerli_guncelle_cmb;

  reg degisti_r[0:L1V_YOL_SAYISI-1][0:L1V_SATIR_SAYISI-1];
  reg degisti_ns;  // yazilacak yol ve satir belli oldugu icin 1 bit yeter.
  reg degisti_guncelle_cmb;

  wire [ONBELLEK_ADRES_GENISLIGI-1:0] istenen_satir_w = adres_i[ONEMSIZ_BIT_SAYISI + BANK_ADRES_GENISLIGI +: ONBELLEK_ADRES_GENISLIGI];

  reg [ONBELLEK_ADRES_GENISLIGI-1:0] sram_son_istenen_satir_r, sram_istenen_satir_cmb;
  assign sram_adres_o = sram_istenen_satir_cmb;

  wire [ETIKET_GENISLIGI-1:0] istenen_etiket_w = adres_i[ONEMSIZ_BIT_SAYISI + BANK_ADRES_GENISLIGI + ONBELLEK_ADRES_GENISLIGI +: ETIKET_GENISLIGI];

  wire [BANK_ADRES_GENISLIGI-1:0] bank_adres_w = adres_i[ONEMSIZ_BIT_SAYISI+:BANK_ADRES_GENISLIGI];

  typedef enum logic [2:0] {
    BOSTA,
    ETIKET_KARSILASTIR,
    BELLEKTEN_GETIR,
    BELLEGE_GERI_YAZ,
    ONBELLEKLENMEYECEK
  } durum_t;

  durum_t durum_ns, durum_r;

  reg [L1V_YOL_SAYISI-1:0] bulunan_yol_cmb;
  reg [ONBELLEK_YOL_GENISLIGI-1:0] bulunan_yol_indis_cmb;
  reg bulundu;

  reg [ETIKET_GENISLIGI-1:0] etiket_sram_veri_yonlendirilmis[0:L1V_YOL_SAYISI-1];
  reg [ONBELLEK_SATIR_GENISLIGI-1:0] veri_sram_veri_yonlendirilmis[0:L1V_YOL_SAYISI-1];

  integer y;
  always_comb begin
    for (y = 0; L1V_YOL_SAYISI > y; y = y + 1) begin
      if(sram_yazilan_son_yol_r == y && sram_son_yaz_r && sram_son_istenen_satir_r == istenen_satir_w) begin
        etiket_sram_veri_yonlendirilmis[y] = etiket_sram_veri_son_yaz_r;
        veri_sram_veri_yonlendirilmis[y]   = veri_sram_veri_son_yaz_r;
      end else begin
        etiket_sram_veri_yonlendirilmis[y] = etiket_sram_veri_i[y];
        veri_sram_veri_yonlendirilmis[y]   = veri_sram_veri_i[y];
      end
    end
  end

  always_comb begin : veri_bulundu
    bulundu = 0;
    bulunan_yol_cmb = 0;
    bulunan_yol_indis_cmb = 0;
    for (int i = 0; i < L1V_YOL_SAYISI; i = i + 1) begin
      if(etiket_sram_veri_yonlendirilmis[i] == istenen_etiket_w && gecerli_r[i][sram_son_istenen_satir_r]) begin
        bulundu = 1;
        bulunan_yol_cmb[i] = 1;
        bulunan_yol_indis_cmb = i;
      end
    end
  end

  reg lru_guncelle_cmb;

  always_comb begin : lru_sonraki_deger
    for (int i = 0; i < L1V_YOL_SAYISI; i = i + 1) begin
      if (bulunan_yol_cmb[i]) begin
        lru_ns[i] = 0;
      end else begin
        if(!bulundu || bulundu && lru_r[i][sram_istenen_satir_cmb] > lru_r[i][bulunan_yol_indis_cmb]) begin
          lru_ns[i] = lru_r[i][sram_istenen_satir_cmb];
        end else begin
          lru_ns[i] = lru_r[i][sram_istenen_satir_cmb] + 1;
        end
      end
    end
  end

  reg [L1V_YOL_SAYISI-1:0] cikacak_yol_oh;
  reg [L1V_YOL_SAYISI-1:0] cikacak_yol_gecersiz_oh;
  reg [ONBELLEK_YOL_GENISLIGI-1:0] cikacak_yol_indis;

  always_comb begin
    cikacak_yol_oh = 0;
    cikacak_yol_gecersiz_oh = 0;
    cikacak_yol_indis = 0;

    for (int i = 0; i < L1V_YOL_SAYISI; i = i + 1) begin
      if (!gecerli_r[i][sram_istenen_satir_cmb]) begin
        cikacak_yol_gecersiz_oh[i] = 1;
        cikacak_yol_indis = i;
      end
    end

    if (cikacak_yol_gecersiz_oh == 0) begin
      for (int i = 0; i < L1V_YOL_SAYISI; i = i + 1) begin
        if (lru_r[i][sram_istenen_satir_cmb] == (L1V_YOL_SAYISI - 1)) begin
          cikacak_yol_oh[i] = 1;
          cikacak_yol_indis = i;
        end
      end
    end
  end

  reg cikacak_yol_kirli_cmb;

  always_comb begin
    cikacak_yol_kirli_cmb = gecerli_r[cikacak_yol_indis][istenen_satir_w] && degisti_r[cikacak_yol_indis][istenen_satir_w];
  end

  wire anabellek_istek_w = adres_i >= `BASLANGIC_ADRESI;
  always_comb begin
    lru_guncelle_cmb = 0;
    gecerli_guncelle_cmb = 0;
    degisti_guncelle_cmb = 0;
    gecerli_ns = 0;
    degisti_ns = 0;
    etiket_sram_veri_yaz_cmb = 0;
    veri_sram_veri_yaz_cmb = 0;
    sram_yaz_cmb = 0;
    case (durum_r)
      BOSTA: begin
        if (istek_gecerli_i) begin
          if (anabellek_istek_w) begin
            durum_ns = ETIKET_KARSILASTIR;
          end else begin
            durum_ns = ONBELLEKLENMEYECEK;
          end
        end else begin
          durum_ns = BOSTA;
        end
      end
      ETIKET_KARSILASTIR: begin
        if (sram_son_istenen_satir_r != istenen_satir_w) begin
          durum_ns = BOSTA;
        end else if (bulundu) begin
          lru_guncelle_cmb = 1;
          durum_ns = BOSTA;
          if (yaz_i) begin
            sram_yaz_cmb = 1;
            degisti_guncelle_cmb = 1;
            degisti_ns = 1;
            veri_sram_veri_yaz_cmb = veri_sram_veri_yonlendirilmis[bulunan_yol_indis_cmb];
            etiket_sram_veri_yaz_cmb = etiket_sram_veri_yonlendirilmis[bulunan_yol_indis_cmb];
            case (maske_i)
              4'b0001: veri_sram_veri_yaz_cmb[bank_adres_w*SOZCUK_GENISLIGI+:8] = veri_i[0+:8];
              4'b0010: veri_sram_veri_yaz_cmb[bank_adres_w*SOZCUK_GENISLIGI+8+:8] = veri_i[0+:8];
              4'b0100: veri_sram_veri_yaz_cmb[bank_adres_w*SOZCUK_GENISLIGI+16+:8] = veri_i[0+:8];
              4'b1000: veri_sram_veri_yaz_cmb[bank_adres_w*SOZCUK_GENISLIGI+24+:8] = veri_i[0+:8];
              4'b0011: veri_sram_veri_yaz_cmb[bank_adres_w*SOZCUK_GENISLIGI+:16] = veri_i[0+:16];
              4'b1111: veri_sram_veri_yaz_cmb[bank_adres_w*SOZCUK_GENISLIGI+:32] = veri_i[0+:32];
              4'b1100: veri_sram_veri_yaz_cmb[bank_adres_w*SOZCUK_GENISLIGI+16+:16] = veri_i[0+:16];
              default: $display("Hata: Maske bu degeri alamaz.");
            endcase
          end
        end else begin
          if (cikacak_yol_kirli_cmb) begin
            durum_ns = BELLEGE_GERI_YAZ;
          end else begin
            durum_ns = BELLEKTEN_GETIR;
          end
        end
      end
      BELLEKTEN_GETIR: begin
        if (vyd_hazir_i) begin
          durum_ns = ETIKET_KARSILASTIR;
          $display("bellekten:%h veri getirildi veri_i: %h", adres_i, vyd_veri_i);
          sram_yaz_cmb = 1;
          etiket_sram_veri_yaz_cmb = istenen_etiket_w;
          veri_sram_veri_yaz_cmb = vyd_veri_i;
          gecerli_guncelle_cmb = 1;
          degisti_guncelle_cmb = 1;
          gecerli_ns = 1;
          degisti_ns = 0;
        end else begin
          durum_ns = BELLEKTEN_GETIR;
        end
      end
      BELLEGE_GERI_YAZ: begin
        if (vyd_hazir_i) begin
          durum_ns = BELLEKTEN_GETIR;
        end else begin
          durum_ns = BELLEGE_GERI_YAZ;
        end
      end
      ONBELLEKLENMEYECEK: begin
        if (vyd_hazir_i) begin
          durum_ns = BOSTA;
        end else begin
          durum_ns = ONBELLEKLENMEYECEK;
        end
      end
      default: begin
        durum_ns = BOSTA;
      end
    endcase
  end

  always_ff @(posedge clk_i) begin
    if (!rstn_i) begin
      durum_r <= BOSTA;
      sram_son_istenen_satir_r <= 0;
      etiket_sram_veri_son_yaz_r <= 0;
      veri_sram_veri_son_yaz_r <= 0;
      sram_yazilan_son_yol_r <= 0;
      sram_son_yaz_r <= 0;
      for (int i = 0; i < L1V_YOL_SAYISI; i = i + 1) begin
        for (int j = 0; j < L1V_SATIR_SAYISI; j = j + 1) begin
          lru_r[i][j] <= 1;
          gecerli_r[i][j] <= 0;
          degisti_r[i][j] <= 0;
        end
      end
    end else begin
      durum_r <= durum_ns;
      sram_son_yaz_r <= sram_yaz_cmb;
      sram_son_istenen_satir_r <= sram_istenen_satir_cmb;
      etiket_sram_veri_son_yaz_r <= etiket_sram_veri_yaz_cmb;
      veri_sram_veri_son_yaz_r <= veri_sram_veri_yaz_cmb;
      sram_yazilan_son_yol_r <= sram_yazilan_yol_cmb;
      if (lru_guncelle_cmb) begin
        for (int i = 0; i < L1V_YOL_SAYISI; i = i + 1) begin
          lru_r[i][sram_istenen_satir_cmb] <= lru_ns[i];
        end
      end
      if (gecerli_guncelle_cmb) begin
        gecerli_r[cikacak_yol_indis][istenen_satir_w] <= gecerli_ns;
      end
      if (degisti_guncelle_cmb) begin
        if (durum_r == ETIKET_KARSILASTIR) begin
          degisti_r[bulunan_yol_indis_cmb][istenen_satir_w] <= degisti_ns;
        end else begin
          degisti_r[cikacak_yol_indis][istenen_satir_w] <= degisti_ns;
        end
      end
    end
  end

  always_comb begin
    sram_istenen_satir_cmb = istenen_satir_w;
  end

  always_comb begin
    sram_yazilan_yol_cmb = durum_r == BELLEKTEN_GETIR ? cikacak_yol_indis : bulunan_yol_indis_cmb;
  end

  always_comb begin
    vyd_istek_o = 0;
    vyd_yaz_o = 0;
    vyd_veri_o = durum_r == ONBELLEKLENMEYECEK ? {96'b0, veri_i} : veri_sram_veri_yonlendirilmis[cikacak_yol_indis];
    case (durum_r)
      BOSTA: begin
        vyd_istek_o = !anabellek_istek_w && istek_gecerli_i;
        vyd_yaz_o   = !anabellek_istek_w && istek_gecerli_i && yaz_i;
      end
      ETIKET_KARSILASTIR: begin
        if (!bulundu) begin
          vyd_istek_o = 1;
          vyd_yaz_o   = 0;
        end
      end
      BELLEKTEN_GETIR: begin
        vyd_istek_o = 1;
        vyd_yaz_o   = 0;
      end
      BELLEGE_GERI_YAZ: begin
        vyd_istek_o = 1;
        vyd_yaz_o   = 1;
      end
      ONBELLEKLENMEYECEK: begin
        vyd_istek_o = 1;
        vyd_yaz_o   = yaz_i;
      end
      default;
    endcase
  end

  assign veri_o = durum_r == ONBELLEKLENMEYECEK ? vyd_veri_i[0+:32] :
    veri_sram_veri_yonlendirilmis[bulunan_yol_indis_cmb][bank_adres_w*SOZCUK_GENISLIGI +: SOZCUK_GENISLIGI];
  assign hazir_o = (durum_r == BOSTA && !istek_gecerli_i) ||
    (durum_r == ETIKET_KARSILASTIR && bulundu) ||
    (durum_r == ONBELLEKLENMEYECEK && vyd_hazir_i);
  assign vyd_adres_o = durum_r == ONBELLEKLENMEYECEK ? adres_i :
    durum_r == BELLEGE_GERI_YAZ ? {etiket_sram_veri_yonlendirilmis[cikacak_yol_indis], istenen_satir_w, 2'b00, 2'b00} :
    {istenen_etiket_w, istenen_satir_w, 2'b00, 2'b00};
endmodule
