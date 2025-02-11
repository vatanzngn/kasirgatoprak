// Kasırga - Toprak AMB
`timescale 1ns / 1ps
`include "uop.vh"

import yurut_pkg::*;
import coz_pkg::*;
import sabitler_pkg::*;

module toprak_amb (
   input amb_kontrol_t amb_kontrol_i,
   input wire [31:0] amb_yazmac1_i,
   input wire [31:0] amb_yazmac2_i,
   output wire [31:0] amb_sonuc_o
);

   wire [31:0] and_out, or_out, xor_out, sll_out, srl_out, sra_out, slt_out, sltu_out, add_sub_out,
      toplayici_yazmac2;
   wire carry_i_w;

   ksa_top toplayici (
      .carry_i(carry_i_w),
      .i_a    (amb_yazmac1_i),
      .i_b    (toplayici_yazmac2),
      .o_s    (add_sub_out),
      .o_carry()
   );

   assign and_out  = amb_yazmac1_i & amb_yazmac2_i;
   assign or_out   = amb_yazmac1_i | amb_yazmac2_i;
   assign xor_out  = amb_yazmac1_i ^ amb_yazmac2_i;
   assign sll_out  = amb_yazmac1_i << amb_yazmac2_i[4:0];
   assign srl_out  = amb_yazmac1_i >> amb_yazmac2_i[4:0];
   assign sra_out  = $signed(amb_yazmac1_i) >>> amb_yazmac2_i[4:0];
   assign slt_out  = ($signed(amb_yazmac1_i) < $signed(amb_yazmac2_i)) ? 32'b1 : 32'b0;
   assign sltu_out = ((amb_yazmac1_i) < (amb_yazmac2_i)) ? 32'b1 : 32'b0;

   logic [31:0] sonuc_zba;
   logic [31:0] sonuc_zbb;

   zba_zbc_zbs zba_zbc_zbs (
      .veri1_i(amb_yazmac1_i),
      .veri2_i(amb_yazmac2_i),
      .islem_i(amb_kontrol_i.amb_islem),
      .sonuc_o(sonuc_zba)
   );

   zbb zbb (
      .rs1_i(amb_yazmac1_i),
      .rs2_i(amb_yazmac2_i),
      .islem_i(amb_kontrol_i.amb_islem),
      .rd_o(sonuc_zbb)
   );

   // Kogge-Stone

   assign toplayici_yazmac2 = (amb_kontrol_i.amb_islem == AMB_ADD) ?
      amb_yazmac2_i : (~amb_yazmac2_i + 32'h0000_0001);

   assign carry_i_w = (amb_kontrol_i.amb_islem == AMB_ADD) ? 1'b0 : 1'b1;
   //*******************
   logic [SOZCUK_GENISLIGI-1:0] sonuc;
   always_comb begin
      case (amb_kontrol_i.amb_islem)
         AMB_ADD: sonuc = amb_yazmac1_i + amb_yazmac2_i;
         AMB_SUB: sonuc = amb_yazmac1_i - amb_yazmac2_i;
         AMB_AND: sonuc = amb_yazmac1_i & amb_yazmac2_i;
         AMB_OR: sonuc = amb_yazmac1_i | amb_yazmac2_i;
         AMB_XOR: sonuc = amb_yazmac1_i ^ amb_yazmac2_i;
         AMB_SLL: sonuc = amb_yazmac1_i << amb_yazmac2_i[4:0];
         AMB_SRL: sonuc = amb_yazmac1_i >> amb_yazmac2_i[4:0];
         AMB_SRA: sonuc = $signed(amb_yazmac1_i) >>> amb_yazmac2_i[4:0];
         AMB_SLT: sonuc = ($signed(amb_yazmac1_i) < $signed(amb_yazmac2_i)) ? 32'b1 : 32'b0;
         AMB_SLTU: sonuc = (amb_yazmac1_i < amb_yazmac2_i) ? 32'b1 : 32'b0;
         ZBA_SH1ADD, ZBA_SH2ADD, ZBA_SH3ADD, ZBC_CLMUL, ZBC_CLMULH, ZBC_CLMULR, ZBS_BCLR, ZBS_BEXT,
            ZBS_BINV, ZBS_BSET:
         sonuc = sonuc_zba;
         ZBB_CLZ, ZBB_CPOP, ZBB_CTZ, ZBB_MAX, ZBB_MAXU, ZBB_MIN, ZBB_MINU, ZBB_ORCB, ZBB_ORN,
            ZBB_REV8, ZBB_ROL, ZBB_ROR, ZBB_SEXTB, ZBB_SEXTH, ZBB_XNOR, ZBB_ZEXTH, ZBB_ANDN:
         sonuc = sonuc_zbb;
         default: sonuc = 32'b0;
      endcase
   end
   assign amb_sonuc_o = sonuc;
endmodule
