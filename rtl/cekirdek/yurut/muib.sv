`timescale 1ns / 1ps

import coz_pkg::*;
import yurut_pkg::*;
module muib (
   input wire [31:0] rs1_i,
   input wire [31:0] rs2_i,
   input muib_kontrol_t muib_kontrol_i,
   input wire clk_i,
   input wire rstn_i,
   output wire hazir_o,
   input wire bh_duraklat_i,
   input wire yurut_hazir_i,
   output reg [31:0] sonuc_o
);

   wire [31:0] carp_sonuc, bolme_sonuc, kalan_sonuc;
   wire bol_hazir;
   wire isaretli_bolme = muib_kontrol_i.muib_islem == MUIB_DIV ||
      muib_kontrol_i.muib_islem == MUIB_REM;
   reg bolme_yap;

   reg bolme_yap_emri_verildi_ns, bolme_yap_emri_verildi_r;

   always @(*) begin
      bolme_yap = muib_kontrol_i.muib_aktif &&
         (muib_kontrol_i.muib_islem == MUIB_DIV || muib_kontrol_i.muib_islem == MUIB_REM ||
          muib_kontrol_i.muib_islem == MUIB_DIVU || muib_kontrol_i.muib_islem == MUIB_REMU) &&
         !bolme_yap_emri_verildi_r;
   end

   always @(*) begin
      bolme_yap_emri_verildi_ns = (yurut_hazir_i && !bh_duraklat_i) ? 0 :
         bolme_yap_emri_verildi_r || bolme_yap;
   end

   always @(posedge clk_i) begin
      if (!rstn_i) begin
         bolme_yap_emri_verildi_r <= 0;
      end
      else begin
         bolme_yap_emri_verildi_r <= bolme_yap_emri_verildi_ns;
      end
   end

   reg bol_reset;

   always @(*) begin
      bol_reset = bolme_yap && !bh_duraklat_i && yurut_hazir_i;
   end

   reg [31:0] carp_sonuc_reg;
   reg carp_hazir, carp_aktif_cmb;

   always_comb begin
      if (muib_kontrol_i.muib_aktif) begin
         case (muib_kontrol_i.muib_islem)
            MUIB_MUL: carp_aktif_cmb = 1;
            MUIB_MULH: carp_aktif_cmb = 1;
            MUIB_MULHSU: carp_aktif_cmb = 1;
            MUIB_MULHU: carp_aktif_cmb = 1;
            default: carp_aktif_cmb = 0;
         endcase
      end
      else begin
         carp_aktif_cmb = 0;
      end
   end

   always_ff @(posedge clk_i) begin
      if (!rstn_i) begin
         carp_sonuc_reg <= 0;
         carp_hazir <= 0;
      end
      else begin
         carp_sonuc_reg <= carp_sonuc;
         carp_hazir <= carp_aktif_cmb && !carp_hazir;
      end
   end

   logic bolme_yap_cmb;

   always_comb begin
      case (muib_kontrol_i.muib_islem)
         MUIB_MUL: bolme_yap_cmb = 0;
         MUIB_MULH: bolme_yap_cmb = 0;
         MUIB_MULHSU: bolme_yap_cmb = 0;
         MUIB_MULHU: bolme_yap_cmb = 0;
         MUIB_DIV: bolme_yap_cmb = muib_kontrol_i.muib_aktif;
         MUIB_DIVU: bolme_yap_cmb = muib_kontrol_i.muib_aktif;
         MUIB_REM: bolme_yap_cmb = muib_kontrol_i.muib_aktif;
         MUIB_REMU: bolme_yap_cmb = muib_kontrol_i.muib_aktif;
         default: bolme_yap_cmb = 0;
      endcase
   end

   assign hazir_o = !muib_kontrol_i.muib_aktif ||
      !bolme_yap_cmb && carp_aktif_cmb && (carp_hazir) || (bolme_yap_cmb && bol_hazir);

   logic [1:0] carp_islem;

   always_comb begin
      case (muib_kontrol_i.muib_islem)
         MUIB_MUL: carp_islem = 2'b00;
         MUIB_MULH: carp_islem = 2'b01;
         MUIB_MULHSU: carp_islem = 2'b10;
         MUIB_MULHU: carp_islem = 2'b11;
         default: carp_islem = 2'b00;
      endcase
   end

   carp ca (
      .ilksayi_i(rs1_i),
      .ikincisayi_i(rs2_i),
      .buyruk_i(carp_islem),
      .sonuc_o(carp_sonuc)
   );

   ts_bolucu bolucu (
      .bolunen_i(rs1_i),
      .bolen_i(rs2_i),
      .isaretli_bolme_i(isaretli_bolme),
      .rstn_i(rstn_i && ~bol_reset),
      .bolum_o(bolme_sonuc),
      .kalan_o(kalan_sonuc),
      .clk_i(clk_i),
      .basla_i(bolme_yap),
      .hazir_o(bol_hazir)
   );

   always_comb begin
      sonuc_o = carp_sonuc_reg;
      if (hazir_o) begin
         case (muib_kontrol_i.muib_islem)
            MUIB_MUL, MUIB_MULH, MUIB_MULHSU, MUIB_MULHU: sonuc_o = carp_sonuc_reg;
            MUIB_DIV, MUIB_DIVU: sonuc_o = bolme_sonuc;
            MUIB_REM, MUIB_REMU: sonuc_o = kalan_sonuc;
            default: sonuc_o = carp_sonuc_reg;
         endcase
      end
   end
endmodule
