`timescale 1ns / 1ps


`include "yapilandirma.vh"
`include "sabitler.vh"
import oncoz_pkg::*;
module getir #(
   parameter int AdresGenisligi  = `ADRES_GENISLIGI_BIT,
   parameter int SozcukGenisligi = `SOZCUK_GENISLIGI_BIT
) (
   input wire clk_i,
   input wire rstn_i,

   // l1b'den veri alma r/v el sıkışması
   input wire l1b_veri_gecerli_i,
   input wire [SozcukGenisligi-1:0] l1b_gelen_veri_i,

   // ps_olustur iletisimi
   output wire getir_hazir_o,
   input wire [SozcukGenisligi-1:0] getir_ps_i,

   // çöz-yazmaç oku veri gonder
   output wire [SozcukGenisligi-1:0] coz_buyruk_o,
   output wire [ AdresGenisligi-1:0] coz_ps_o,

   // csr exc çıktı
   output wire [3:0] getir_mcause_ic_sebep_o,
   output wire [AdresGenisligi-1:0] getir_mepc_o,
   output wire [AdresGenisligi-1:0] getir_mtval_o,
   output wire getir_exc_o,

   input wire coz_gs_guncelle_i,
   input wire [SozcukGenisligi-1:0] coz_dallanma_olan_ps_i,
   input wire [SozcukGenisligi-1:0] coz_dallanilan_ps_i,
   input wire dallanma_oldu_i,

   output wire [AdresGenisligi-1:0] ongoru_hedef_o,
   output wire dallanma_ongoruldu_o,

   input wire atla_i,
   input wire bh_bosalt,
   input wire bh_duraklat

);
   /* atılabilecek exceptionlar
    0: Instruction address misaligned
    1: Instruction access fault
    */
   reg [3:0] getir_mcause_ic_sebep_r;
   reg [`ADRES_GENISLIGI_BIT-1:0] getir_mepc_r;
   reg [`SOZCUK_GENISLIGI_BIT-1:0] getir_mtval_r;
   reg getir_exc_r;

   reg [3:0] getir_mcause_ic_sebep_ns;
   reg [`ADRES_GENISLIGI_BIT-1:0] getir_mepc_ns;
   reg [`SOZCUK_GENISLIGI_BIT-1:0] getir_mtval_ns;
   reg getir_exc_ns;


   reg [AdresGenisligi-1:0] coz_ps_r, coz_ps_ns;
   reg getir_hazir_cmb;
   reg [SozcukGenisligi-1:0] coz_buyruk_r, coz_buyruk_ns;

   dallanma_turu_t dallanma_turu;

   oncozucu oncoz (
      .buyruk_i(l1b_gelen_veri_i),
      .dallanma_turu_o(dallanma_turu)
   );

   logic [AdresGenisligi-1:0] ongoru_hedef;
   assign ongoru_hedef_o = ongoru_hedef;
   logic dallanma_ongoruldu;
   assign dallanma_ongoruldu_o = dallanma_ongoruldu && !bh_duraklat;
   gshare #(
      .BHT_SATIR_SAYISI  (128),
      .BTB_SATIR_SAYISI  (64),
      .N_BITLIK_DOYGUNLUK(2)
   ) gshare_instance (
      .clk_i(clk_i),
      .rstn_i(rstn_i),
      .ps_i(getir_ps_i),
      .dallanma_turu_i(dallanma_turu),
      .ps_o(ongoru_hedef),
      .dallanma_ongoruldu_o(dallanma_ongoruldu),
      .coz_gs_guncelle_i(coz_gs_guncelle_i),
      .coz_dallanma_olan_ps_i(coz_dallanma_olan_ps_i),
      .coz_dallanilan_ps_i(coz_dallanilan_ps_i),
      .coz_dallanma_oldu_i(dallanma_oldu_i)
   );

   always_comb begin
      getir_mcause_ic_sebep_ns = 0;
      getir_mepc_ns = 0;
      getir_mtval_ns = 0;
      getir_exc_ns = 0;
      coz_buyruk_ns = 0;
      coz_ps_ns = 0;
      getir_hazir_cmb = 0;
      if (!(getir_ps_i >= `BASLANGIC_ADRESI && getir_ps_i <= `BITIS_ADRESI)) begin
         getir_mcause_ic_sebep_ns = `EXC_IAF_CODE;
         getir_mtval_ns = getir_ps_i;
         getir_exc_ns = 1;
         getir_hazir_cmb = 1;
         getir_mepc_ns = getir_ps_i;
      end
      else if (getir_ps_i[1:0] != 2'b00) begin
         getir_mcause_ic_sebep_ns = `EXC_IAM_CODE;
         getir_mtval_ns = getir_ps_i;
         getir_exc_ns = 1;
         getir_hazir_cmb = 1;
         getir_mepc_ns = getir_ps_i;
      end
      else if (l1b_veri_gecerli_i) begin
         coz_buyruk_ns = l1b_gelen_veri_i;
         getir_hazir_cmb = 1;
         coz_ps_ns = getir_ps_i;
      end
      else begin
         getir_hazir_cmb = 0;
         coz_buyruk_ns = coz_buyruk_r;
         coz_ps_ns = coz_ps_r;
      end
   end

   always @(posedge clk_i) begin
      if (!rstn_i || bh_bosalt) begin
         coz_ps_r <= 0;
         coz_buyruk_r <= `NOP;
         getir_exc_r <= 0;
         getir_mtval_r <= 0;
         getir_mepc_r <= 0;
         getir_mcause_ic_sebep_r <= 0;
      end
      else if (dallanma_oldu_i && !bh_duraklat) begin  // paket dropla.
         getir_exc_r <= 0;
         getir_mtval_r <= 0;
         getir_mepc_r <= 0;
         getir_mcause_ic_sebep_r <= `NOT_EXC_INV;
         coz_buyruk_r <= `NOP;
         coz_ps_r <= `NOP;
      end
      else if (!bh_duraklat) begin
         getir_exc_r <= getir_hazir_cmb ? getir_exc_ns : 0;
         getir_mtval_r <= getir_hazir_cmb ? getir_mtval_ns : 0;
         getir_mepc_r <= getir_hazir_cmb ? getir_mepc_ns : 0;
         getir_mcause_ic_sebep_r <= getir_hazir_cmb ? getir_mcause_ic_sebep_ns : `NOT_EXC_INV;
         coz_buyruk_r <= getir_hazir_cmb ? coz_buyruk_ns : `NOP;
         coz_ps_r <= getir_hazir_cmb ? coz_ps_ns : `NOP;
      end
      else begin
         getir_exc_r <= getir_exc_r;
         getir_mtval_r <= getir_mtval_r;
         getir_mepc_r <= getir_mepc_r;
         getir_mcause_ic_sebep_r <= getir_mcause_ic_sebep_r;
         coz_buyruk_r <= coz_buyruk_r;
         coz_ps_r <= coz_ps_r;
      end
   end

   assign getir_hazir_o = getir_hazir_cmb && !bh_duraklat;
   assign coz_buyruk_o = coz_buyruk_r;
   assign coz_ps_o = coz_ps_r;

   assign getir_exc_o = getir_exc_r;
   assign getir_mtval_o = getir_mtval_r;
   assign getir_mepc_o = getir_mepc_r;
   assign getir_mcause_ic_sebep_o = getir_mcause_ic_sebep_r;

endmodule
