`timescale 1ns / 1ps

`include "sabitler.vh"
`include "yapilandirma.vh"

module yonga #(
   parameter ADRES_GENISLIGI  = `ADRES_GENISLIGI_BIT,
   parameter SOZCUK_GENISLIGI = `SOZCUK_GENISLIGI_BIT,

   parameter CEVRE_BIRIM_BASLA_ADRES = `CEVRE_BIRIM_BASLANGIC,
   parameter CEVRE_BIRIM_BITIS_ADRES = `CEVRE_BIRIM_BITIS,
   localparam CEVRE_BIRIM_ADRES_GENISLIGI = CEVRE_BIRIM_BITIS_ADRES - CEVRE_BIRIM_BASLA_ADRES,
   localparam CEVRE_BIRIM_IC_ADRES_GENISLIGI = $clog2(CEVRE_BIRIM_ADRES_GENISLIGI),
   parameter SLAVE_SAYISI = `WB_SLAVE_SAYISI,
   localparam ONBELLEK_BORUHATTI_VERI_GENISLIGI = SOZCUK_GENISLIGI,
   localparam ONBELLEK_SATIR_SOZCUK_SAYISI = `ONBELLEK_SATIR_SOZCUK_SAYISI,
   localparam ONBELLEK_ANABELLEK_VERI_GENISLIGI = SOZCUK_GENISLIGI * ONBELLEK_SATIR_SOZCUK_SAYISI,
   parameter int L1V_YOL_SAYISI = `L1_VERI_ONBELLEK_YOL_SAYISI,
   parameter int L1V_SATIR_SAYISI = `L1_VERI_ONBELLEK_YOL_SATIR_SAYISI,
   parameter int L1B_YOL_SAYISI = `L1_BUYRUK_ONBELLEK_YOL_SAYISI,
   parameter int L1B_SATIR_SAYISI = `L1_BUYRUK_ONBELLEK_YOL_SATIR_SAYISI,
   parameter int ONEMSIZ_BIT_SAYISI = `ADRES_ONEMSIZ_BIT_SAYISI,
   parameter int SATIR_SOZCUK_SAYISI = `ONBELLEK_SATIR_SOZCUK_SAYISI,
   localparam int BANK_ADRES_GENISLIGI = $clog2(SATIR_SOZCUK_SAYISI),
   localparam int ONBELLEK_ADRES_GENISLIGI = $clog2(L1V_SATIR_SAYISI),
   localparam int ONBELLEK_YOL_GENISLIGI = $clog2(L1V_YOL_SAYISI),
   localparam int ONBELLEK_SATIR_GENISLIGI = SATIR_SOZCUK_SAYISI * SOZCUK_GENISLIGI,
   localparam int ETIKET_GENISLIGI =
      ADRES_GENISLIGI - ONBELLEK_ADRES_GENISLIGI - BANK_ADRES_GENISLIGI - ONEMSIZ_BIT_SAYISI,
   localparam int ETIKET_BOSLUK = SOZCUK_GENISLIGI - ETIKET_GENISLIGI
) (
   input wire clk_i,
   input wire rstn_i,

   input wire mem_gnt_i,
   output wire [31:0] mem_addr_o,
   output wire mem_req_o,
   output wire mem_we_o,
   output wire [127:0] mem_wdata_o,
   output wire [15:0] mem_wstrb_o,
   input wire [127:0] mem_rdata_i,
   input wire mem_rvalid_i,

   input wire uart_rx_i,
   output wire uart_tx_o,
   output wire [31:0] ps_o
);

   wire [ADRES_GENISLIGI-1:0] vyd_anabellek_adresi;
   wire vyd_anabellek_istek_gecerli;
   wire [ONBELLEK_ANABELLEK_VERI_GENISLIGI-1:0] vyd_anabellek_yazilacak_veri;
   wire vyd_anabellek_yaz;
   wire [ONBELLEK_ANABELLEK_VERI_GENISLIGI-1:0] vyd_anabellek_okunan_veri;
   wire vyd_anabellek_hazir;
   wire vyd_anabellek_grant;

   wire [ADRES_GENISLIGI-1:0] cek_l1v_adres;
   wire [SOZCUK_GENISLIGI-1:0] cek_l1v_veri;
   wire cek_l1v_yaz;
   wire cek_l1v_istek;
   wire [SOZCUK_GENISLIGI/8-1:0] cek_l1v_maske;

   wire [SOZCUK_GENISLIGI-1:0] l1v_cek_veri;
   wire l1v_hazir;

   wire [ONBELLEK_ADRES_GENISLIGI-1:0] l1v_sram_adres;
   wire [ONBELLEK_YOL_GENISLIGI-1:0] l1v_sram_yaz_indis;
   wire l1v_sram_yaz;

   wire [ONBELLEK_SATIR_GENISLIGI-1:0] l1v_veri_sram_veri;
   wire [ONBELLEK_SATIR_GENISLIGI-1:0] veri_sram_l1v_veri[0:L1V_YOL_SAYISI-1];

   wire [ETIKET_GENISLIGI-1:0] l1v_etiket_sram_veri;
   wire [ETIKET_GENISLIGI-1:0] etiket_sram_l1v_veri[0:L1V_YOL_SAYISI-1];

   wire [ADRES_GENISLIGI-1:0] l1v_vyd_adres;
   wire l1v_vyd_yaz;
   wire l1v_vyd_istek;

   wire vyd_l1v_hazir;
   wire [ONBELLEK_SATIR_GENISLIGI-1:0] vyd_l1v_veri;
   wire [ONBELLEK_SATIR_GENISLIGI-1:0] l1v_vyd_veri;

   wire l1b_vyd_yaz = 1'b0;
   wire l1b_vyd_istek_gecerli;
   wire vyd_l1b_hazir;
   wire [31:0] l1b_vyd_adres;
   wire [127:0] vyd_l1b_veri;

   wire [ADRES_GENISLIGI-1:0] cekirdek_l1b_adres;
   wire cekirdek_l1b_gecerli;
   wire [SOZCUK_GENISLIGI-1:0] cekirdek_l1b_veri;
   wire cekirdek_l1b_hazir;

   // ana bellek erisim
   wire [31:0] addr;
   assign mem_addr_o  = addr - 32'h8000_0000;
   assign mem_wstrb_o = 16'b1111111111111111;

   // VYD WBM WBS
   wire [ADRES_GENISLIGI-1:0] vyd_wbm_adr;
   wire [SOZCUK_GENISLIGI-1:0] vyd_wbm_veri;
   wire [SOZCUK_GENISLIGI-1:0] wbm_vyd_veri;
   wire vyd_wbm_yaz;
   wire vyd_wbm_istek;
   wire wbm_vyd_hazir;

   wire [CEVRE_BIRIM_IC_ADRES_GENISLIGI-1:0] wbm_wbs_adr;  // [0:SLAVE_SAYISI-1];
   wire [SOZCUK_GENISLIGI-1:0] wbm_wbs_veri;  // [0:SLAVE_SAYISI-1];
   wire [SOZCUK_GENISLIGI-1:0] wbs_wbm_veri[0:SLAVE_SAYISI-1];
   wire wbm_wbs_yaz[0:SLAVE_SAYISI-1];
   wire wbm_wbs_stb[0:SLAVE_SAYISI-1];
   wire wbm_wbs_cyc[0:SLAVE_SAYISI-1];
   wire wbs_wbm_ack[0:SLAVE_SAYISI-1];

   // cekirdek
   cekirdek cek (
      .clk_i (clk_i),
      .rstn_i(rstn_i),

      // L1B baglantilari
      .ps_l1b_adres(cekirdek_l1b_adres),
      .ps_l1b_gecerli(cekirdek_l1b_gecerli),
      .l1b_ps_veri(cekirdek_l1b_veri),
      .l1b_hazir(cekirdek_l1b_hazir),

      // L1V baglantilari
      .bib_l1v_adres(cek_l1v_adres),
      .bib_l1v_gecerli(cek_l1v_istek),
      .bib_l1v_yaz(cek_l1v_yaz),
      .bib_l1v_maske(cek_l1v_maske),
      .bib_l1v_veri(cek_l1v_veri),
      .l1v_bib_veri(l1v_cek_veri),
      .l1v_hazir(l1v_hazir)
   );
   /*
    Uart Kontrolcusu
*/
   uart_kontrolcusu uart (
      .clk_i(clk_i),
      .rstn_i(rstn_i),
      .uart_rx_i(uart_rx_i),
      .uart_tx_o(uart_tx_o),
      .WB_WE_I(wbm_wbs_yaz[0]),
      .WB_STB_I(wbm_wbs_stb[0]),
      .WB_CYC_I(wbm_wbs_cyc[0]),
      .WB_ADR_I(wbm_wbs_adr),
      .WB_DAT_I(wbm_wbs_veri),
      .WB_DAT_O(wbs_wbm_veri[0]),
      .WB_ACK_O(wbs_wbm_ack[0])
   );
   /*
    VYD -> WB Master Adaptoru
*/
   vyd_wbm_donusturucu wbm (
      .clk_i(clk_i),
      .rstn_i(rstn_i),
      .adres_i(vyd_wbm_adr),
      .veri_i(vyd_wbm_veri),
      .veri_o(wbm_vyd_veri),
      .yaz_i(vyd_wbm_yaz),
      .istek_i(vyd_wbm_istek),
      .hazir_o(wbm_vyd_hazir),
      .wbs_adr_o(wbm_wbs_adr),
      .wbs_dat_o(wbm_wbs_veri),
      .wbs_dat_i(wbs_wbm_veri),
      .wbs_we_o(wbm_wbs_yaz),
      .wbs_stb_o(wbm_wbs_stb),
      .wbs_cyc_o(wbm_wbs_cyc),
      .wbs_ack_i(wbs_wbm_ack)
   );

   veriyolu_denetleyici vyd (
      .clk_i(clk_i),
      .rstn_i(rstn_i),
      .l1b_adres_i(l1b_vyd_adres),
      .l1b_istek_gecerli_i(l1b_vyd_istek_gecerli),
      .l1b_veri_o(vyd_l1b_veri),
      .l1b_veri_hazir_o(vyd_l1b_hazir),
      .l1v_adres_i(l1v_vyd_adres),
      .l1v_veri_i(l1v_vyd_veri),
      .l1v_istek_gecerli_i(l1v_vyd_istek),
      .l1v_yaz_i(l1v_vyd_yaz),
      .l1v_veri_o(vyd_l1v_veri),
      .l1v_veri_hazir_o(vyd_l1v_hazir),
      .ram_adres_o(vyd_anabellek_adresi),
      .ram_istek_gecerli_o(vyd_anabellek_istek_gecerli),
      .ram_yazilacak_veri_o(vyd_anabellek_yazilacak_veri),
      .ram_yaz_o(vyd_anabellek_yaz),
      .ram_okunan_veri_i(vyd_anabellek_okunan_veri),
      .ram_hazir_i(vyd_anabellek_hazir),
      .ram_grant_i(vyd_anabellek_grant),
      .wb_adr_o(vyd_wbm_adr),
      .wb_veri_i(wbm_vyd_veri),
      .wb_veri_o(vyd_wbm_veri),
      .wb_yaz_o(vyd_wbm_yaz),
      .wb_istek_o(vyd_wbm_istek),
      .wb_hazir_i(wbm_vyd_hazir)
   );

   assign addr = vyd_anabellek_adresi;
   assign mem_req_o = vyd_anabellek_istek_gecerli;
   assign mem_wdata_o = vyd_anabellek_yazilacak_veri;
   assign mem_we_o = vyd_anabellek_yaz;
   assign vyd_anabellek_okunan_veri = mem_rdata_i;
   assign vyd_anabellek_hazir = mem_rvalid_i;
   assign vyd_anabellek_grant = mem_gnt_i;

   l1b_denetleyici l1b (
      .clk_i(clk_i),
      .rstn_i(rstn_i),
      .istek_i(cekirdek_l1b_gecerli),
      .adres_i(cekirdek_l1b_adres),
      .veri_o(cekirdek_l1b_veri),
      .hazir_o(cekirdek_l1b_hazir),
      //.vyd_yaz_o(l1b_vyd_yaz),
      .vyd_istek_o(l1b_vyd_istek_gecerli),
      .vyd_adres_o(l1b_vyd_adres),
      .vyd_hazir_i(vyd_l1b_hazir),
      .vyd_veri_i(vyd_l1b_veri)
   );

   l1v_denetleyici l1vd (
      .clk_i(clk_i),
      .rstn_i(rstn_i),
      .adres_i(cek_l1v_adres),
      .veri_i(cek_l1v_veri),
      .yaz_i(cek_l1v_yaz),
      .maske_i(cek_l1v_maske),
      .istek_gecerli_i(cek_l1v_istek),
      .veri_o(l1v_cek_veri),
      .hazir_o(l1v_hazir),
      .sram_adres_o(l1v_sram_adres),
      .sram_yaz_indis_o(l1v_sram_yaz_indis),
      .sram_yaz_o(l1v_sram_yaz),
      .veri_sram_veri_o(l1v_veri_sram_veri),
      .veri_sram_veri_i(veri_sram_l1v_veri),
      .etiket_sram_veri_o(l1v_etiket_sram_veri),
      .etiket_sram_veri_i(etiket_sram_l1v_veri),
      .vyd_adres_o(l1v_vyd_adres),
      .vyd_yaz_o(l1v_vyd_yaz),
      .vyd_istek_o(l1v_vyd_istek),
      .vyd_hazir_i(vyd_l1v_hazir),
      .vyd_veri_i(vyd_l1v_veri),
      .vyd_veri_o(l1v_vyd_veri)
   );

   genvar i, j;
   generate
      for (i = 0; i < L1V_YOL_SAYISI; i = i + 1) begin : g_l1v_yol
         // her yol icin etiket sram olustur,
         wire yaz = l1v_sram_yaz_indis == i && l1v_sram_yaz;
         wire [SOZCUK_GENISLIGI-1:0] ic_o;
         pdk_sram #(
            .SATIR_SAYISI(L1V_SATIR_SAYISI),
            .SOZCUK_GENISLIGI(SOZCUK_GENISLIGI)
         ) l1v_etiket (
            .CE (clk_i),
            .WEB(!(yaz)),
            .OEB(~(1'b1)),
            .CSB(1'b0),
            .A  (l1v_sram_adres),
            .I  ({{ETIKET_BOSLUK{1'b0}}, l1v_etiket_sram_veri}),
            .O  (ic_o)
         );
         assign etiket_sram_l1v_veri[i] = ic_o[0+:ETIKET_GENISLIGI];
         for (j = 0; j < SATIR_SOZCUK_SAYISI; j = j + 1) begin : g_l1v_yol_bank

            pdk_sram #(
               .SATIR_SAYISI(L1V_SATIR_SAYISI),
               .SOZCUK_GENISLIGI(SOZCUK_GENISLIGI)
            ) l1v_veri (
               .CE (clk_i),
               .WEB(!(yaz)),
               .OEB(~(1'b1)),
               .CSB(1'b0),
               .A  (l1v_sram_adres),
               .I  (l1v_veri_sram_veri[j*SOZCUK_GENISLIGI+:SOZCUK_GENISLIGI]),
               .O  (veri_sram_l1v_veri[i][j*SOZCUK_GENISLIGI+:SOZCUK_GENISLIGI])
            );
         end
         // her yol her bank icin veri sram olustur,
      end
   endgenerate

   assign ps_o = cekirdek_l1b_adres;

endmodule
