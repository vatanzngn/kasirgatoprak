`timescale 1ns / 1ps

`include "sabitler.vh"
`include "yapilandirma.vh"

module l1b_denetleyici #(
   parameter ADRES_GENISLIGI = `ADRES_GENISLIGI_BIT,
   parameter YOL_SAYISI = `L1_BUYRUK_ONBELLEK_YOL_SAYISI,
   parameter SATIR_SAYISI = `L1_BUYRUK_ONBELLEK_YOL_SATIR_SAYISI,  // her yol icin
   parameter SATIR_SOZCUK_SAYISI = `ONBELLEK_SATIR_SOZCUK_SAYISI,
   parameter ONEMSIZ_BIT_SAYISI = `ADRES_ONEMSIZ_BIT_SAYISI,
   parameter SOZCUK_GENISLIGI = `SOZCUK_GENISLIGI_BIT
) (
   input wire clk_i,
   input wire rstn_i,
   // alt_seciye(islemci ile iletisime gececek)
   input wire istek_i,
   input wire [ADRES_GENISLIGI-1:0] adres_i,
   // islemci cikan veri
   output wire [SOZCUK_GENISLIGI-1:0] veri_o,
   output wire hazir_o,
   // ust seviye(ddr ile iletisime gececek)
   output wire vyd_istek_o,
   output wire [ADRES_GENISLIGI-1:0] vyd_adres_o,
   // vyd gelen veri
   input wire vyd_hazir_i,
   input wire [SOZCUK_GENISLIGI*SATIR_SOZCUK_SAYISI-1:0] vyd_veri_i
);
   localparam LRU_GENISLIGI = YOL_SAYISI > 1 ? $clog2(YOL_SAYISI) : 1;


   localparam YOL_GENISLIGI = LRU_GENISLIGI;
   localparam SATIR_GENISLIGI = SATIR_SOZCUK_SAYISI * SOZCUK_GENISLIGI;
   localparam SATIR_SOZCUK_SAY_GEN = $clog2(SATIR_SOZCUK_SAYISI);


   localparam ONEMSIZ_BIT_GENISLIGI = 2;
   localparam ONEMSIZ_BASLANGIC = 0;

   localparam BLOK_OFSETI_GENISLIGI = 2;
   localparam BLOK_OFSETI_BASLANGIC = ONEMSIZ_BASLANGIC + ONEMSIZ_BIT_GENISLIGI;

   localparam SATIR_BASLANGIC = BLOK_OFSETI_BASLANGIC + BLOK_OFSETI_GENISLIGI;
   localparam ONBELLEK_ADRES_GENISLIGI = $clog2(SATIR_SAYISI);

   localparam TAG_BASLANGIC = SATIR_BASLANGIC + ONBELLEK_ADRES_GENISLIGI;
   localparam
      TAG_GENISLIGI = ADRES_GENISLIGI - ONEMSIZ_BIT_SAYISI - ONBELLEK_ADRES_GENISLIGI - $clog2(
      SATIR_SOZCUK_SAYISI
   );

   localparam GECERLI_GENISLIGI = 1;

   function [ONBELLEK_ADRES_GENISLIGI-1:0] satir_getir;
      input [ADRES_GENISLIGI-1:0] adres;
      begin
         satir_getir = adres[SATIR_BASLANGIC+:ONBELLEK_ADRES_GENISLIGI];
      end
   endfunction

   function [TAG_GENISLIGI-1:0] etiket_getir;
      input [ADRES_GENISLIGI-1:0] adres;
      begin
         etiket_getir = adres[ADRES_GENISLIGI-1-:TAG_GENISLIGI];
      end
   endfunction

   function [BLOK_OFSETI_GENISLIGI-1:0] ofset_getir;
      input [ADRES_GENISLIGI-1:0] adres;
      begin
         ofset_getir = adres[BLOK_OFSETI_BASLANGIC+:BLOK_OFSETI_GENISLIGI];
      end
   endfunction

   reg vyd_istek_r, vyd_istek_ns;
   reg [ADRES_GENISLIGI-1:0] vyd_adres_r;
   reg [ADRES_GENISLIGI-1:0] vyd_adres_ns;

   // tag ve gecerli verisi tag sraminde tutulacak.
   // veri SRAM'lerini olustur
   // hem okumalar, hem de yazmalar sonraki cycle gerçekleştirilecek
   reg [ONBELLEK_ADRES_GENISLIGI-1:0] veri_onbellegi_adres_r;
   reg [ONBELLEK_ADRES_GENISLIGI-1:0] veri_onbellegi_adres_ns;
   reg [SOZCUK_GENISLIGI-1:0]
      veri_onbellegi_yazilacak_veri_r[0:YOL_SAYISI-1][0:SATIR_SOZCUK_SAYISI-1];
   reg [SOZCUK_GENISLIGI-1:0]
      veri_onbellegi_yazilacak_veri_ns[0:YOL_SAYISI-1][0:SATIR_SOZCUK_SAYISI-1];
   reg veri_yaz_r[0:YOL_SAYISI-1];
   reg veri_yaz_ns[0:YOL_SAYISI-1];

   wire [SOZCUK_GENISLIGI-1:0] yol_okunan_veri[0:YOL_SAYISI-1][0:SATIR_SOZCUK_SAYISI-1];
   wire [SOZCUK_GENISLIGI-1:0] m_yol_okunan_veri[0:YOL_SAYISI-1][0:SATIR_SOZCUK_SAYISI-1];
   // yazilacak veriye veri yonlendirmesi yap adres aynıysa
   // verileri tutacak SRAM'i olustur
   genvar yol_gi, sozcuk_gi;
   generate
      for (yol_gi = 0; YOL_SAYISI > yol_gi; yol_gi = yol_gi + 1) begin
         for (sozcuk_gi = 0; SATIR_SOZCUK_SAYISI > sozcuk_gi; sozcuk_gi = sozcuk_gi + 1) begin
            pdk_sram #(
               .SATIR_SAYISI(SATIR_SAYISI),
               .SOZCUK_GENISLIGI(SOZCUK_GENISLIGI)
            ) yol (
               .CE (clk_i),
               .WEB(~(veri_yaz_ns[yol_gi])),
               .OEB(~(1'b1)),
               .CSB(1'b0),
               .A  (veri_onbellegi_adres_ns),
               .I  (veri_onbellegi_yazilacak_veri_ns[yol_gi][sozcuk_gi]),
               .O  (m_yol_okunan_veri[yol_gi][sozcuk_gi])
            );
            assign yol_okunan_veri[yol_gi][sozcuk_gi] = (veri_onbellegi_adres_r) == satir_getir(
               adres_i
            ) && veri_yaz_r[yol_gi] ? veri_onbellegi_yazilacak_veri_r[yol_gi][sozcuk_gi] :
               m_yol_okunan_veri[yol_gi][sozcuk_gi];
         end
      end
   endgenerate

   localparam ETIKET_VE_GECERLI_GENISLIGI = TAG_GENISLIGI + GECERLI_GENISLIGI;
   localparam BOS_BIT_SAYISI = SOZCUK_GENISLIGI - ETIKET_VE_GECERLI_GENISLIGI;


   // lru verisini tutacak reg'i olustur
   reg meta_yaz_r[0:YOL_SAYISI-1];
   reg meta_yaz_ns[0:YOL_SAYISI-1];

   reg [ONBELLEK_ADRES_GENISLIGI-1:0] meta_adres_r;
   reg [ONBELLEK_ADRES_GENISLIGI-1:0] meta_adres_ns;

   reg [ETIKET_VE_GECERLI_GENISLIGI-1:0] meta_yazilacak_veri_r[0:YOL_SAYISI-1];
   reg [ETIKET_VE_GECERLI_GENISLIGI-1:0] meta_yazilacak_veri_ns[0:YOL_SAYISI-1];
   wire [ETIKET_VE_GECERLI_GENISLIGI-1:0] meta_okunan_veri[0:YOL_SAYISI-1];
   wire [ETIKET_VE_GECERLI_GENISLIGI-1:0] m_meta_okunan_veri[0:YOL_SAYISI-1];
   // etiket ve gecerli verisini tutacak SRAM'i olustur
   reg [LRU_GENISLIGI-1:0] lru[0:SATIR_SAYISI-1][0:YOL_SAYISI-1];
   reg [LRU_GENISLIGI-1:0] lru_ns[0:SATIR_SAYISI-1][0:YOL_SAYISI-1];

   wire [GECERLI_GENISLIGI-1:0] meta_gecerli[0:YOL_SAYISI-1];
   wire [TAG_GENISLIGI-1:0] meta_etiket[0:YOL_SAYISI-1];

   reg lru_guncelle[0:SATIR_SAYISI-1];

   // her  her yol için ve her satır için etiket ve gecerli
   generate
      for (yol_gi = 0; YOL_SAYISI > yol_gi; yol_gi = yol_gi + 1) begin
         //wire [SOZCUK_GENISLIGI-1:0] ic_o;
         pdk_sram #(
            .SATIR_SAYISI(SATIR_SAYISI),
            .SOZCUK_GENISLIGI(SOZCUK_GENISLIGI)
         ) yol (
            .CE (clk_i),
            .WEB(~(meta_yaz_ns[yol_gi])),
            .OEB(~(1'b1)),
            .CSB(1'b0),
            .A  (meta_adres_ns),
            .I  (meta_yazilacak_veri_ns[yol_gi]),
            .O  (m_meta_okunan_veri[yol_gi])
         );
         assign meta_gecerli[yol_gi] = meta_okunan_veri[yol_gi][0+:GECERLI_GENISLIGI];
         assign meta_etiket[yol_gi] = meta_okunan_veri[yol_gi][GECERLI_GENISLIGI+:TAG_GENISLIGI];
         assign meta_okunan_veri[yol_gi] = (meta_adres_r == satir_getir(
            adres_i
         )) && meta_yaz_r[yol_gi] ? meta_yazilacak_veri_r[yol_gi] : m_meta_okunan_veri[yol_gi];
      end
   endgenerate
   localparam BOSTA = 2'b00, ETIKET_OKU = 2'b01, YENI_BLOK_AYIR = 2'b10;

   reg [1:0] durum_r, durum_ns;
   reg hazir_cmb;
   //okumaları hazırla sonraki state'de okumuş ol
   // hit algıla
   reg bulundu;
   reg [LRU_GENISLIGI-1:0] bulunan_indis;
   reg [YOL_SAYISI-1:0] bulundu_oh;

   reg [LRU_GENISLIGI-1:0] bulunan_lru;
   // combinational buldu
   integer yol_buldu_i;
   always @(*) begin : yol_buldu_kontrolu
      for (yol_buldu_i = 0; yol_buldu_i < YOL_SAYISI; yol_buldu_i = yol_buldu_i + 1) begin : oh_bul
         if (meta_gecerli[yol_buldu_i] && meta_etiket[yol_buldu_i] == etiket_getir(adres_i))
            bulundu_oh[yol_buldu_i] = 1;
         else bulundu_oh[yol_buldu_i] = 0;
      end
   end

   always @(*) begin
      bulundu = 0;
      bulunan_indis = 0;
      bulunan_lru = YOL_SAYISI - 1;
      for (
         yol_buldu_i = 0; yol_buldu_i < YOL_SAYISI; yol_buldu_i = yol_buldu_i + 1
      ) begin : bul_indis_cikar
         if (!bulundu && bulundu_oh[yol_buldu_i]) begin
            bulundu = 1;
            bulunan_indis = yol_buldu_i;
            bulunan_lru = lru[meta_adres_r][yol_buldu_i];
         end
      end
   end

   reg [LRU_GENISLIGI-1:0] sonraki_lru[0:YOL_SAYISI-1];
   integer sonraki_lru_i;

   reg bos_bulundu;
   reg cikacak_bulundu;
   reg [LRU_GENISLIGI-1:0] cikacak_indis;
   integer yol_dolas_i;
   always @(*) begin
      bos_bulundu = 0;
      cikacak_indis = 0;
      cikacak_bulundu = 0;
      for (yol_dolas_i = 0; yol_dolas_i < YOL_SAYISI; yol_dolas_i = yol_dolas_i + 1) begin
         if (meta_gecerli[yol_dolas_i] == 1'b0) begin
            cikacak_indis = yol_dolas_i;
            cikacak_bulundu = 1;
            bos_bulundu = 1;
         end
      end

      if (!bos_bulundu) begin
         for (yol_dolas_i = 0; yol_dolas_i < YOL_SAYISI; yol_dolas_i = yol_dolas_i + 1) begin
            if (lru[satir_getir(adres_i)][yol_dolas_i] == YOL_SAYISI - 1 && !cikacak_bulundu) begin
               cikacak_indis   = yol_dolas_i;
               cikacak_bulundu = 1;
            end
         end
      end
   end

   reg [SOZCUK_GENISLIGI-1:0] donecek_veri_cmb;

   always @(*) begin
      donecek_veri_cmb = yol_okunan_veri[bulunan_indis][ofset_getir(adres_i)];
   end

   integer yol_i, satir_i, sozcuk_i;
   reg reset_r, reset_ns;

   reg [ONBELLEK_ADRES_GENISLIGI-1:0] reset_counter_r, reset_counter_ns;

   always @(*) begin
      hazir_cmb = 0;
      durum_ns = 0;
      vyd_istek_ns = 0;
      vyd_adres_ns = vyd_adres_r;
      meta_adres_ns = meta_adres_r;
      reset_ns = reset_r;
      reset_counter_ns = reset_counter_r;
      veri_onbellegi_adres_ns = veri_onbellegi_adres_r;
      for (satir_i = 0; satir_i < SATIR_SAYISI; satir_i = satir_i + 1) begin
         lru_guncelle[satir_i] = 0;
         for (yol_i = 0; yol_i < YOL_SAYISI; yol_i = yol_i + 1) begin
            lru_ns[satir_i][yol_i] = lru[satir_i][yol_i];
         end
      end
      for (yol_i = 0; yol_i < YOL_SAYISI; yol_i = yol_i + 1) begin
         veri_yaz_ns[yol_i] = 0;
         meta_yaz_ns[yol_i] = 0;
         meta_yazilacak_veri_ns[yol_i] = 0;

         for (sozcuk_i = 0; sozcuk_i < SATIR_SOZCUK_SAYISI; sozcuk_i = sozcuk_i + 1) begin
            veri_onbellegi_yazilacak_veri_ns[yol_i][sozcuk_i] = 0;
         end
      end
      if (reset_r) begin
         meta_adres_ns = reset_counter_r;
         for (yol_i = 0; yol_i < YOL_SAYISI; yol_i = yol_i + 1) begin
            meta_yaz_ns[yol_i] = 1;
            meta_yazilacak_veri_ns[yol_i] = 0;
         end
         if (reset_counter_r == SATIR_SAYISI - 1) begin
            reset_ns = 0;
         end
         else begin
            reset_counter_ns = reset_counter_r + 1;
         end
      end
      else if (durum_r != BOSTA && istek_i && meta_adres_r != satir_getir(
            adres_i
         )) begin  // istenen adres kombinasyonel olarak degistirilmis
         durum_ns = ETIKET_OKU;
         veri_onbellegi_adres_ns = satir_getir(adres_i);
         meta_adres_ns = satir_getir(adres_i);
      end
      else begin
         case (durum_r)
            BOSTA: begin
               // eger istek gelirse -> ETIKET_OKU'ya git okumaya hazırlan
               if (istek_i) begin
                  durum_ns = ETIKET_OKU;
                  veri_onbellegi_adres_ns = satir_getir(adres_i);
                  meta_adres_ns = satir_getir(adres_i);
               end
               else begin
                  durum_ns  = BOSTA;
                  hazir_cmb = 1;
               end
            end

            ETIKET_OKU: begin
               hazir_cmb = 0;
               for (
                  sonraki_lru_i = 0; sonraki_lru_i < YOL_SAYISI; sonraki_lru_i = sonraki_lru_i + 1
               ) begin : lru_guncelle_comb
                  if (lru[meta_adres_r][sonraki_lru_i] < bulunan_lru)
                     lru_ns[meta_adres_r][sonraki_lru_i] = (lru[meta_adres_r][sonraki_lru_i] + 1);
                  else if (sonraki_lru_i == bulunan_indis) lru_ns[meta_adres_r][sonraki_lru_i] = 0;
                  else lru_ns[meta_adres_r][sonraki_lru_i] = lru[meta_adres_r][sonraki_lru_i];
               end
               if (bulundu && satir_getir(adres_i) == meta_adres_ns) begin
                  lru_guncelle[satir_getir(adres_i)] = 1;
                  if (istek_i) begin
                     durum_ns = ETIKET_OKU;
                     hazir_cmb = 1;
                     veri_onbellegi_adres_ns = satir_getir(adres_i);
                     meta_adres_ns = satir_getir(adres_i);
                  end
                  else begin
                     durum_ns  = BOSTA;
                     hazir_cmb = 1;
                  end
               end
               else if (istek_i && veri_onbellegi_adres_r != satir_getir(adres_i)) begin
                  durum_ns = ETIKET_OKU;
                  hazir_cmb = 0;
                  veri_onbellegi_adres_ns = satir_getir(adres_i);
                  meta_adres_ns = satir_getir(adres_i);
               end
               else begin
                  durum_ns = YENI_BLOK_AYIR;
                  vyd_istek_ns = 1;
                  vyd_adres_ns = adres_i;

                  for (satir_i = 0; satir_i < SATIR_SAYISI; satir_i = satir_i + 1) begin
                     lru_guncelle[satir_i] = 0;
                  end

                  for (yol_i = 0; yol_i < YOL_SAYISI; yol_i = yol_i + 1) begin
                     veri_yaz_ns[yol_i] = 0;
                     meta_yaz_ns[yol_i] = 0;
                     meta_yazilacak_veri_ns[yol_i] = 0;
                     for (
                        sozcuk_i = 0; sozcuk_i < SATIR_SOZCUK_SAYISI; sozcuk_i = sozcuk_i + 1
                     ) begin
                        veri_onbellegi_yazilacak_veri_ns[yol_i][sozcuk_i] = 0;
                     end
                  end
               end
            end

            YENI_BLOK_AYIR: begin
               if (vyd_hazir_i) begin
                  vyd_istek_ns = 0;
                  vyd_adres_ns = 0;
                  veri_onbellegi_adres_ns = satir_getir(adres_i);
                  meta_adres_ns = satir_getir(adres_i);
                  for (satir_i = 0; SATIR_SOZCUK_SAYISI > satir_i; satir_i = satir_i + 1)
                  lru_ns[meta_adres_ns][cikacak_indis] = 0;
                  lru_ns[meta_adres_ns][cikacak_indis] = bos_bulundu ? YOL_SAYISI - 1 : bulunan_lru;
                  for (yol_i = 0; yol_i < YOL_SAYISI; yol_i = yol_i + 1) begin
                     for (
                        sozcuk_i = 0; sozcuk_i < SATIR_SOZCUK_SAYISI; sozcuk_i = sozcuk_i + 1
                     ) begin
                        veri_onbellegi_yazilacak_veri_ns[cikacak_indis][sozcuk_i] =
                           vyd_veri_i[SOZCUK_GENISLIGI*sozcuk_i+:SOZCUK_GENISLIGI];
                     end
                     meta_yazilacak_veri_ns[cikacak_indis] = {etiket_getir(adres_i), 1'b1};
                     veri_yaz_ns[cikacak_indis] = 1;
                     meta_yaz_ns[cikacak_indis] = 1;
                  end
                  lru_guncelle[satir_getir(adres_i)] = 1;
                  durum_ns = ETIKET_OKU;
               end
               else begin
                  durum_ns = YENI_BLOK_AYIR;
                  vyd_istek_ns = 1;
                  vyd_adres_ns = adres_i;
               end
            end
            default: begin
            end
         endcase
      end
   end

   always @(posedge clk_i) begin
      if (!rstn_i) begin
         reset_counter_r <= 0;
         reset_r <= 1;
         durum_r <= BOSTA;
         veri_onbellegi_adres_r <= 0;
         vyd_istek_r <= 0;
         vyd_adres_r <= 0;
         for (yol_i = 0; yol_i < YOL_SAYISI; yol_i = yol_i + 1) begin
            for (satir_i = 0; satir_i < SATIR_SAYISI; satir_i = satir_i + 1) begin
               lru[satir_i][yol_i] <= 0;
            end
            for (sozcuk_i = 0; sozcuk_i < SATIR_SOZCUK_SAYISI; sozcuk_i = sozcuk_i + 1) begin
               veri_onbellegi_yazilacak_veri_r[yol_i][sozcuk_i] <= 0;
            end
            veri_yaz_r[yol_i] <= 1;
            meta_yaz_r[yol_i] <= 1;
            meta_yazilacak_veri_r[yol_i] <= 0;
         end
      end
      else begin
         reset_r <= reset_ns;
         reset_counter_r <= reset_counter_ns;
         durum_r <= durum_ns;
         veri_onbellegi_adres_r <= veri_onbellegi_adres_ns;
         meta_adres_r <= meta_adres_ns;
         vyd_adres_r <= vyd_adres_ns;
         vyd_istek_r <= vyd_istek_ns;
         // lru bilgisini sifirla
         for (
            yol_i = 0; yol_i < YOL_SAYISI; yol_i = yol_i + 1
         ) begin  // sozcuk bazlıları da aynı dongude halletmek icin
            for (satir_i = 0; satir_i < SATIR_SAYISI; satir_i = satir_i + 1) begin
               if (lru_guncelle[satir_i]) begin
                  lru[satir_i][yol_i] <= lru_ns[satir_i][yol_i];
               end
            end
            for (sozcuk_i = 0; sozcuk_i < SATIR_SOZCUK_SAYISI; sozcuk_i = sozcuk_i + 1) begin
               veri_onbellegi_yazilacak_veri_r[yol_i][sozcuk_i] <=
                  veri_onbellegi_yazilacak_veri_ns[yol_i][sozcuk_i];
            end
            veri_yaz_r[yol_i] <= veri_yaz_ns[yol_i];
            meta_yaz_r[yol_i] <= meta_yaz_ns[yol_i];
            meta_yazilacak_veri_r[yol_i] <= meta_yazilacak_veri_ns[yol_i];
         end
      end
   end
   assign hazir_o = hazir_cmb;
   assign vyd_istek_o = vyd_istek_r;
   assign vyd_adres_o = vyd_adres_r;
   assign veri_o = donecek_veri_cmb;

endmodule
