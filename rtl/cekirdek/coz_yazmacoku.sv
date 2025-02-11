`define cv32e40p_fs_illegal

import csr_pkg::*;
import coz_pkg::*;
import yurut_pkg::*;
import riscv_instr::*;
import sabitler_pkg::*;
module coz_yazmacoku (
   input logic clk_i,
   input logic rstn_i,

   input logic [ ADRES_GENISLIGI-1:0] ps_i,
   input logic [SOZCUK_GENISLIGI-1:0] buyruk_i,

   input logic [3:0] getir_coz_mcause_ic_i,
   input logic [ADRES_GENISLIGI-1:0] getir_coz_mtval_i,
   input logic [ADRES_GENISLIGI-1:0] getir_coz_mepc_i,
   input logic getir_coz_exc_i,

   //gy
   input logic [SOZCUK_GENISLIGI-1:0] rd_veri_i,
   input logic rd_yaz_i,
   input logic rd_fp_yaz_i,
   input logic [$clog2(REGISTER_SAYISI)-1:0] rd_i,

   //yu
   input logic [SOZCUK_GENISLIGI-1:0] yu_rd_veri_i,

   input csr_pkg::fs_t fs_i,

   output logic [11:0] csr_adres_o,
   input wire [SOZCUK_GENISLIGI-1:0] csr_veri_i,
   input wire [25:0] csr_coz_misa_i,
   input wire [2:0] csr_fcsr_i,
   input wire bh_bosalt_i,
   input wire bh_duraklat_i,

   input wire [31:0] ongorulen_adres_i,

   output wire [31:0] ps_sonraki_adres_o,
   output wire        ps_sicra_aktif_o,
   output wire        coz_ps_dallanma_ongorucu_guncelle_o,

   // TDB
   output logic [$clog2(REGISTER_SAYISI)-1:0] rs1_a_o,
   output logic rs1_fp_oku_o,
   output logic [$clog2(REGISTER_SAYISI)-1:0] rs2_a_o,
   output logic rs2_fp_oku_o,
   output logic [$clog2(REGISTER_SAYISI)-1:0] rs3_a_o,
   input logic [1:0] tdb_rs1_yonlendirme_i,
   input logic [1:0] tdb_rs2_yonlendirme_i,
   input logic [1:0] tdb_rs3_yonlendirme_i,

   output coz_sonucu_t sonuc_o
);

   always @(posedge clk_i) begin
      if (ps_i == 32'h800001ac) begin
         $display("dur");
      end
      if (ps_i == 32'h800002ec && !bh_duraklat_i) begin
         $display("kesin dur");
      end
   end

   always @* begin
      if (ps_i == 32'h800002ec && !bh_duraklat_i) begin
         $display("kesin dur");
      end
   end
   /* */
   logic   [       SOZCUK_GENISLIGI-1:0] imm_i;
   logic   [       SOZCUK_GENISLIGI-1:0] imm_s;
   logic   [       SOZCUK_GENISLIGI-1:0] imm_b;
   logic   [       SOZCUK_GENISLIGI-1:0] imm_u;
   logic   [       SOZCUK_GENISLIGI-1:0] imm_j;
   logic   [       SOZCUK_GENISLIGI-1:0] zimm;

   logic   [$clog2(REGISTER_SAYISI)-1:0] rd_a;

   logic   [                       11:0] funct12;
   logic   [                        6:0] funct7;
   logic   [                        2:0] funct3;
   logic   [                        1:0] funct2;
   logic   [                        4:0] shamt;
   logic   [                        6:0] opcode;
   logic   [                       11:0] csr_a;
   os_rm_t                               rm;

   always_comb begin : parca_coz
      rs1_a_o = buyruk_i[19:15];
      rs2_a_o = buyruk_i[24:20];
      rs3_a_o = buyruk_i[31:27];
      rd_a    = buyruk_i[11:7];
      funct12 = buyruk_i[31:20];
      funct7  = buyruk_i[31:25];
      funct3  = buyruk_i[14:12];
      funct2  = buyruk_i[26:25];
      shamt   = rs2_a_o;
      opcode  = buyruk_i[6:0];
      csr_a   = funct12;
      rm      = rm_il(funct3);
   end
   logic rs1_fp_oku, rs2_fp_oku;
   always_comb begin
      rs1_fp_oku = sonuc.islenec1_yapi.islenec_tip == OS;
      rs2_fp_oku = sonuc.islenec2_yapi.islenec_tip == OS;
   end

   assign rs1_fp_oku_o = rs1_fp_oku;
   assign rs2_fp_oku_o = rs2_fp_oku;

   logic [SOZCUK_GENISLIGI-1:0] rs1_y;
   logic [SOZCUK_GENISLIGI-1:0] rs2_y;
   logic [SOZCUK_GENISLIGI-1:0] rs3_y;
   yazmac_obegi yazmac_obegi (
      .clk_i(clk_i),
      .rstn_i(rstn_i),
      .rs1_i(rs1_a_o),
      .rs1_fp_oku(sonuc.islenec1_yapi.islenec_tip == OS),
      .rs2_i(rs2_a_o),
      .rs2_fp_oku(sonuc.islenec2_yapi.islenec_tip == OS),
      .rs3_i(rs3_a_o),
      .rd_i(rd_i),
      .rd_veri_i(rd_veri_i),
      .rd_yaz_i(rd_yaz_i),
      .rd_fp_yaz_i(rd_fp_yaz_i),
      .rs1(rs1_y),
      .rs2(rs2_y),
      .rs3(rs3_y)
   );

   logic [SOZCUK_GENISLIGI-1:0] rs1;
   logic [SOZCUK_GENISLIGI-1:0] rs2;
   logic [SOZCUK_GENISLIGI-1:0] rs3;
   // I Base Instr Set
   logic ir_i_i, ir_i_shamt, ir_u, ir_r, uc_jal, uc_jalr, c_branch, load, store, system;

   // M Ext Instr Set
   logic ir_r_m;

   // A Ext Instr Set
   logic ir_lrsc, ir_amo;

   // F Ext Instr Set
   logic
      ir_f_load,
      ir_f_store,
      f_f_arith  /* ADD SUB 1,2 kullanması için*/,
      f_f_arith_3,
      f_to_i,
      i_to_f,
      f_to_f_sign,
      f_to_i_mv,
      i_to_f_mv,
      ir_f_cmp,
      ir_f_class;

   // Zicsr Ext Instr Set
   logic ir_zicsr, i_zicsr;

   logic desteklenmiyor;
   always_comb begin : i_coz
      //i
      ir_i_i = 0;
      ir_i_shamt = 0;
      ir_u = 0;
      ir_r = 0;
      uc_jal = 0;
      uc_jalr = 0;
      c_branch = 0;
      load = 0;
      store = 0;
      system = 0;
      //M
      ir_r_m = 0;

      //A
      ir_lrsc = 0;
      ir_amo = 0;
      // F
      ir_f_load = 0;
      ir_f_store = 0;
      f_f_arith = 0;
      f_f_arith_3 = 0;
      f_to_i = 0;
      i_to_f = 0;
      f_to_f_sign = 0;
      ir_f_cmp = 0;
      ir_f_class = 0;
      f_to_i_mv = 0;
      i_to_f_mv = 0;

      // Zicsr
      ir_zicsr = 0;
      i_zicsr = 0;
      desteklenmiyor = 0;

      // Zba, Zbb, Zbc, Zbs
      casex (buyruk_i)
         ADDI, SLTI, SLTIU, ANDI, ORI, XORI, BCLRI, BEXTI, BINVI, BSETI: ir_i_i = 1;
         SLLI_RV32, SRLI_RV32, SRAI_RV32, CLZ, CTZ, CPOP, SEXT_B, SEXT_H, ZEXT_H_RV32, RORI, ORC_B,
            REV8_RV32:
         ir_i_shamt = 1;
         LUI, AUIPC: ir_u = 1;
         riscv_instr::ADD, SLT, SLTU, AND, OR, XOR, SLL, SRL, SUB, SRA, SH1ADD, SH2ADD, SH3ADD,
            ANDN, ORN, XNOR, MAX, MAXU, MIN, MINU, ROL, ROR, CLMUL, CLMULH, CLMULR, BCLR, BEXT,
            BINV, BSET:
         ir_r = 1;
         JAL: uc_jal = 1;
         JALR: uc_jalr = 1;
         BEQ, BNE, BLT, BGE, BLTU, BGEU: c_branch = 1;
         LB, LH, LW, LBU, LHU: load = 1;
         SB, SH, SW: store = 1;
         FENCE, FENCE_I, ECALL, EBREAK, MRET: system = 1;
         riscv_instr::MUL, MULH, MULHSU, MULHU, riscv_instr::DIV, DIVU, REM, REMU: ir_r_m = 1;
         LR_W, SC_W: ir_lrsc = 1;
         AMOSWAP_W, AMOADD_W, AMOXOR_W, AMOAND_W, AMOOR_W, AMOMIN_W, AMOMAX_W, AMOMAXU_W, AMOMINU_W:
         ir_amo = 1;
         FLW: ir_f_load = 1;
         FSW: ir_f_store = 1;
         FMUL_S, FDIV_S, FSQRT_S, FMIN_S, FMAX_S, FADD_S, FSUB_S: f_f_arith = 1;
         //FADD_S, FSUB_S: f_f_arith_2 = 1;
         FMADD_S, FNMADD_S, FMSUB_S, FNMSUB_S: f_f_arith_3 = 1;
         FCVT_W_S, FCVT_WU_S: f_to_i = 1;
         FCVT_S_W, FCVT_S_WU: i_to_f = 1;
         FSGNJ_S, FSGNJN_S, FSGNJX_S: f_to_f_sign = 1;
         FEQ_S, FLT_S, FLE_S: ir_f_cmp = 1;
         FCLASS_S: ir_f_class = 1;
         FMV_X_W: f_to_i_mv = 1;
         FMV_W_X: i_to_f_mv = 1;
         CSRRW, CSRRS, CSRRC: ir_zicsr = 1;
         CSRRWI, CSRRSI, CSRRCI: i_zicsr = 1;
         /*32'b0,*/ NOP: ir_r = 1;
         default: desteklenmiyor = 1;
      endcase
   end


   always_comb begin
      imm_i = $signed({buyruk_i[31], buyruk_i[30:25], buyruk_i[24:21], buyruk_i[20]});
      imm_s = $signed({buyruk_i[31], buyruk_i[30:25], buyruk_i[11:8], buyruk_i[7]});
      imm_b = $signed({buyruk_i[31], buyruk_i[7], buyruk_i[30:25], buyruk_i[11:8], 1'b0});
      imm_u = $signed({buyruk_i[31], buyruk_i[30:20], buyruk_i[19:12], 12'b0});
      imm_j = $signed({buyruk_i[31], buyruk_i[19:12], buyruk_i[20], buyruk_i[30:25],
                       buyruk_i[24:21], 1'b0});
      zimm = $unsigned({buyruk_i[19:15]});

   end

   wire r1_esit_r2 = (($signed(rs1) == $signed(rs2))) ? 1'b1 : 1'b0;
   wire r1_esitdegil_r2 = (($signed(rs1) != $signed(rs2))) ? 1'b1 : 1'b0;
   wire r1_kucuk_r2 = (($signed(rs1) < $signed(rs2))) ? 1'b1 : 1'b0;
   wire r1_buyukesit_r2 = (($signed(rs1) >= $signed(rs2))) ? 1'b1 : 1'b0;
   wire r1_isaresiz_kucuk_r2 = ((rs1 < rs2)) ? 1'b1 : 1'b0;
   wire r1_isaretsiz_buyukesit_r2 = ((rs1 >= rs2)) ? 1'b1 : 1'b0;


   logic ps_sicra, cfi;
   logic [$clog2(REGISTER_SAYISI)-1:0] csr_rd_ic;
   always_comb begin
      csr_rd_ic = csr_ic_adres_al(hedef(csr_a));
   end
   always_comb begin
      ps_sicra = 0;
      if (buyruk_i inside {BEQ} && r1_esit_r2) ps_sicra = 1;
      else if (buyruk_i inside {BNE} && r1_esitdegil_r2) ps_sicra = 1;
      else if (buyruk_i inside {BLT} && r1_kucuk_r2) ps_sicra = 1;
      else if (buyruk_i inside {BGE} && r1_buyukesit_r2) ps_sicra = 1;
      else if (buyruk_i inside {BLTU} && r1_isaresiz_kucuk_r2) ps_sicra = 1;
      else if (buyruk_i inside {BGEU} && r1_isaretsiz_buyukesit_r2) ps_sicra = 1;
      else if (buyruk_i inside {JAL}) ps_sicra = 1;
      else if (buyruk_i inside {JALR}) ps_sicra = 1;
      else ps_sicra = 0;
   end

   // yanlış tahmin yoksa atlamaya zorlama
   assign ps_sicra_aktif_o = (ongorulen_adres_i != ps_sonraki && !iam && !bh_duraklat_i &&
                              (uc_jal || uc_jalr || c_branch));  /* !bh_duraklat_i && !iam*/
   ;

   logic do_guncelle;
   always_comb begin
      do_guncelle = 0;
      casex (buyruk_i)
         BEQ, BNE, BLT, BGE, BLTU, BGEU, JAL: do_guncelle = 1;
         default: do_guncelle = 0;
      endcase
   end

   assign coz_ps_dallanma_ongorucu_guncelle_o = do_guncelle && !bh_duraklat_i && !iam;

   logic [ADRES_GENISLIGI-1:0] ps_sonraki;
   logic iam;

   always_comb begin
      if (ps_sicra && ps_sonraki[1:0] != 2'b00) iam = 1;
      else iam = 0;
   end

   always_comb begin
      if (buyruk_i inside {JAL}) ps_sonraki = ps_i + imm_j;
      else if (buyruk_i inside {JALR}) begin
         ps_sonraki = rs1 + imm_i;
         ps_sonraki = {ps_sonraki[31:1], 1'b0};
      end
      else if (buyruk_i inside {BEQ} && r1_esit_r2) ps_sonraki = ps_i + imm_b;
      else if (buyruk_i inside {BNE} && r1_esitdegil_r2) ps_sonraki = ps_i + imm_b;
      else if (buyruk_i inside {BLT} && r1_kucuk_r2) ps_sonraki = ps_i + imm_b;
      else if (buyruk_i inside {BGE} && r1_buyukesit_r2) ps_sonraki = ps_i + imm_b;
      else if (buyruk_i inside {BLTU} && r1_isaresiz_kucuk_r2) ps_sonraki = ps_i + imm_b;
      else if (buyruk_i inside {BGEU} && r1_isaretsiz_buyukesit_r2) ps_sonraki = ps_i + imm_b;
      else ps_sonraki = ps_i + 4;
   end
   assign ps_sonraki_adres_o = ps_sonraki;

   coz_sonucu_t sonuc;
   always_comb begin
      case (tdb_rs1_yonlendirme_i)
         2'b01:   rs1 = yu_rd_veri_i;
         2'b10:   rs1 = rd_veri_i;
         default: rs1 = rs1_y;
      endcase
      case (tdb_rs2_yonlendirme_i)
         2'b01:   rs2 = yu_rd_veri_i;
         2'b10:   rs2 = rd_veri_i;
         default: rs2 = rs2_y;
      endcase
      case (tdb_rs3_yonlendirme_i)
         2'b01:   rs3 = yu_rd_veri_i;
         2'b10:   rs3 = rd_veri_i;
         default: rs3 = rs3_y;
      endcase
   end
   always_comb begin : islev_haric_doldur
      if (ir_i_i) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = TS;
         sonuc.islenec2_yapi.islenec = imm_i;
         sonuc.islenec2_yapi.islenec_tip = IMM;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = TS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (ir_i_shamt) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = TS;
         sonuc.islenec2_yapi.islenec = shamt;
         sonuc.islenec2_yapi.islenec_tip = IMM;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = TS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (ir_u) begin
         sonuc.islenec1_yapi.islenec = imm_u;
         sonuc.islenec1_yapi.islenec_tip = IMM;
         if (opcode[5] == 1'b1  /*LUI opc */) begin
            sonuc.islenec2_yapi.islenec = 32'h0;
            sonuc.islenec2_yapi.islenec_tip = IMM;
         end
         else begin
            sonuc.islenec2_yapi.islenec = ps_i;
            sonuc.islenec2_yapi.islenec_tip = IMM;
         end
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = TS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (ir_r) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = TS;
         sonuc.islenec2_yapi.islenec = rs2;
         sonuc.islenec2_yapi.islenec_tip = TS;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = TS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (uc_jal) begin
         sonuc.islenec1_yapi.islenec = ps_i;
         sonuc.islenec1_yapi.islenec_tip = IMM;
         sonuc.islenec2_yapi.islenec = 32'h4;
         sonuc.islenec2_yapi.islenec_tip = IMM;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = iam ? IMM_yaz : TS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (uc_jalr) begin
         sonuc.islenec1_yapi.islenec = ps_i;
         sonuc.islenec1_yapi.islenec_tip = TS;
         sonuc.islenec2_yapi.islenec = 32'h4;
         sonuc.islenec2_yapi.islenec_tip = IMM;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = iam ? IMM_yaz : TS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (c_branch) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = TS;
         sonuc.islenec2_yapi.islenec = rs2;
         sonuc.islenec2_yapi.islenec_tip = TS;
         sonuc.islenec3_yapi.islenec = imm_b;
         sonuc.islenec3_yapi.islenec_tip = IMM;
         sonuc.sonuc1_hedef.yazma_hedefi = IMM_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (load) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = TS;
         sonuc.islenec2_yapi.islenec = rs2;
         sonuc.islenec2_yapi.islenec_tip = TS;
         sonuc.islenec3_yapi.islenec_tip = IMM;
         sonuc.islenec3_yapi.islenec = imm_i;
         sonuc.sonuc1_hedef.yazma_hedefi = TS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (store) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = TS;
         sonuc.islenec2_yapi.islenec = rs2;
         sonuc.islenec2_yapi.islenec_tip = TS;
         sonuc.islenec3_yapi.islenec = imm_s;
         sonuc.islenec3_yapi.islenec_tip = IMM;
         sonuc.sonuc1_hedef = BOS_HEDEF;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (system) begin
         sonuc.islenec1_yapi.islenec = 32'b0;
         sonuc.islenec1_yapi.islenec_tip = IMM;
         sonuc.islenec2_yapi.islenec = 32'b0;
         sonuc.islenec2_yapi.islenec_tip = IMM;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef = BOS_HEDEF;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (ir_r_m) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = TS;
         sonuc.islenec2_yapi.islenec = rs2;
         sonuc.islenec2_yapi.islenec_tip = TS;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = TS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (ir_lrsc) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = TS;
         sonuc.islenec2_yapi.islenec = rs2;
         sonuc.islenec2_yapi.islenec_tip = TS;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = TS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (ir_amo) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = TS;
         sonuc.islenec2_yapi.islenec = rs2;
         sonuc.islenec2_yapi.islenec_tip = TS;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = TS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (ir_f_load) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = TS;
         sonuc.islenec2_yapi.islenec = rs2;
         sonuc.islenec2_yapi.islenec_tip = TS;
         sonuc.islenec3_yapi.islenec_tip = IMM;
         sonuc.islenec3_yapi.islenec = imm_i;
         sonuc.sonuc1_hedef.yazma_hedefi = OS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (ir_f_store) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = TS;
         sonuc.islenec2_yapi.islenec = rs2;
         sonuc.islenec2_yapi.islenec_tip = OS;
         sonuc.islenec3_yapi.islenec = imm_s;
         sonuc.islenec3_yapi.islenec_tip = IMM;
         sonuc.sonuc1_hedef = BOS_HEDEF;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (f_f_arith) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = OS;
         sonuc.islenec2_yapi.islenec = rs2;
         sonuc.islenec2_yapi.islenec_tip = OS;
         //sonuc.islenec1_yapi = BOS_ISLENEC; // icerde donusum yaptigim en buyuk hataydi sırf hatayi cozmek icin 2 saat harcadim........
         sonuc.islenec3_yapi.islenec = 32'b0;
         sonuc.islenec3_yapi.islenec_tip = IMM;
         sonuc.sonuc1_hedef.yazma_hedefi = OS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (f_f_arith_3) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = OS;
         sonuc.islenec2_yapi.islenec = rs2;
         sonuc.islenec2_yapi.islenec_tip = OS;
         sonuc.islenec3_yapi.islenec = rs3;
         sonuc.islenec3_yapi.islenec_tip = OS;
         sonuc.sonuc1_hedef.yazma_hedefi = OS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (f_to_i) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = OS;
         sonuc.islenec2_yapi.islenec = rs2;
         sonuc.islenec2_yapi.islenec_tip = IMM;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = TS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (i_to_f) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = TS;
         sonuc.islenec2_yapi.islenec = rs2;
         sonuc.islenec2_yapi.islenec_tip = IMM;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = OS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (f_to_f_sign) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = OS;
         sonuc.islenec2_yapi.islenec = rs2;
         sonuc.islenec2_yapi.islenec_tip = OS;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = OS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (ir_f_cmp) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = OS;
         sonuc.islenec2_yapi.islenec = rs2;
         sonuc.islenec2_yapi.islenec_tip = OS;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = TS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (ir_f_class) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = OS;
         sonuc.islenec2_yapi.islenec = 32'b0;
         sonuc.islenec2_yapi.islenec_tip = IMM;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = TS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (f_to_i_mv) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = OS;
         sonuc.islenec2_yapi.islenec = 32'b0;
         sonuc.islenec2_yapi.islenec_tip = IMM;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = TS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (i_to_f_mv) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = TS;
         sonuc.islenec2_yapi.islenec = 32'b0;
         sonuc.islenec2_yapi.islenec_tip = IMM;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = OS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
      else if (ir_zicsr) begin
         sonuc.islenec1_yapi.islenec = rs1;
         sonuc.islenec1_yapi.islenec_tip = TS;
         sonuc.islenec2_yapi.islenec = csr_veri_i;
         sonuc.islenec2_yapi.islenec_tip = CSR;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = TS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         if ((buyruk_i inside {CSRRS} || buyruk_i inside {CSRRC}) && rs1_a_o == 0) begin
            sonuc.sonuc2_hedef.yazma_hedefi = IMM_yaz;
         end
         else begin
            sonuc.sonuc2_hedef.yazma_hedefi = CSR_yaz;
         end
         sonuc.sonuc2_hedef.islenec_adresi = csr_ic_adres_al(hedef(csr_a));
      end
      else if (i_zicsr) begin
         sonuc.islenec1_yapi.islenec = zimm;
         sonuc.islenec1_yapi.islenec_tip = IMM;
         sonuc.islenec2_yapi.islenec = csr_veri_i;
         sonuc.islenec2_yapi.islenec_tip = CSR;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = TS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         if ((buyruk_i inside {CSRRSI} || buyruk_i inside {CSRRCI}) && zimm == 0) begin
            sonuc.sonuc2_hedef.yazma_hedefi = IMM_yaz;
         end
         else begin
            sonuc.sonuc2_hedef.yazma_hedefi = CSR_yaz;
         end
         sonuc.sonuc2_hedef.islenec_adresi = csr_ic_adres_al(hedef(csr_a));
      end
      else begin
         sonuc.islenec1_yapi.islenec = rs1_a_o;
         sonuc.islenec1_yapi.islenec_tip = TS;
         sonuc.islenec2_yapi.islenec = rs2_a_o;
         sonuc.islenec2_yapi.islenec_tip = TS;
         sonuc.islenec3_yapi = BOS_ISLENEC;
         sonuc.sonuc1_hedef.yazma_hedefi = TS_yaz;
         sonuc.sonuc1_hedef.islenec_adresi = rd_a;
         sonuc.sonuc2_hedef = BOS_HEDEF;
      end
   end
   os_rm_t os_rm;
   always_comb begin : kullanilacak_rounding_sec
      os_rm = rm;
      if (rm == OS_DYN) begin
         os_rm = rm_il(csr_fcsr_i);
      end
   end

   always_comb begin : islev_doldur
      sonuc.os_kontrol = OS_KAPALI;
      sonuc.csr_kontrol = CSR_KAPALI;
      sonuc.muib_kontrol = MUIB_KAPALI;
      sonuc.abib_kontrol = ABIB_KAPALI;
      sonuc.amb_kontrol = AMB_KAPALI;
      sonuc.dallanma_kontrol = BRANCH_KAPALI;
      casex (buyruk_i)
         ADDI, riscv_instr::ADD: sonuc.amb_kontrol = '{AKTIF, AMB_ADD};
         SLTI, SLT: sonuc.amb_kontrol = '{AKTIF, AMB_SLT};
         SLTU, SLTIU: sonuc.amb_kontrol = '{AKTIF, AMB_SLTU};
         ANDI, AND: sonuc.amb_kontrol = '{AKTIF, AMB_AND};
         ORI, OR: sonuc.amb_kontrol = '{AKTIF, AMB_OR};
         XORI, XOR: sonuc.amb_kontrol = '{AKTIF, AMB_XOR};
         SLLI, SLL: sonuc.amb_kontrol = '{AKTIF, AMB_SLL};
         SRLI, SRL: sonuc.amb_kontrol = '{AKTIF, AMB_SRL};
         SRAI, SRA: sonuc.amb_kontrol = '{AKTIF, AMB_SRA};
         LUI: sonuc.amb_kontrol = '{AKTIF, AMB_ADD};
         AUIPC: sonuc.amb_kontrol = '{AKTIF, AMB_ADD};
         SUB: sonuc.amb_kontrol = '{AKTIF, AMB_SUB};
         JAL: sonuc.amb_kontrol = '{AKTIF, AMB_ADD};
         JALR: sonuc.amb_kontrol = '{AKTIF, AMB_ADD};
         BEQ: sonuc.dallanma_kontrol = '{AKTIF, DB_BEQ};
         BNE: sonuc.dallanma_kontrol = '{AKTIF, DB_BNE};
         BLT: sonuc.dallanma_kontrol = '{AKTIF, DB_BLT};
         BGE: sonuc.dallanma_kontrol = '{AKTIF, DB_BGE};
         BLTU: sonuc.dallanma_kontrol = '{AKTIF, DB_BLTU};
         BGEU: sonuc.dallanma_kontrol = '{AKTIF, DB_BGEU};
         LB: sonuc.abib_kontrol = '{AKTIF, ABIB_LB};
         LH: sonuc.abib_kontrol = '{AKTIF, ABIB_LH};
         LW: sonuc.abib_kontrol = '{AKTIF, ABIB_LW};
         LBU: sonuc.abib_kontrol = '{AKTIF, ABIB_LBU};
         LHU: sonuc.abib_kontrol = '{AKTIF, ABIB_LHU};
         SB: sonuc.abib_kontrol = '{AKTIF, ABIB_SB};
         SH: sonuc.abib_kontrol = '{AKTIF, ABIB_SH};
         SW: sonuc.abib_kontrol = '{AKTIF, ABIB_SW};
         // ECALL EBREAK
         // FENCE FENCE_I
         riscv_instr::MUL: sonuc.muib_kontrol = '{AKTIF, MUIB_MUL};
         MULH: sonuc.muib_kontrol = '{AKTIF, MUIB_MULH};
         MULHSU: sonuc.muib_kontrol = '{AKTIF, MUIB_MULHSU};
         MULHU: sonuc.muib_kontrol = '{AKTIF, MUIB_MULHU};
         riscv_instr::DIV: sonuc.muib_kontrol = '{AKTIF, MUIB_DIV};
         DIVU: sonuc.muib_kontrol = '{AKTIF, MUIB_DIVU};
         REM: sonuc.muib_kontrol = '{AKTIF, MUIB_REM};
         REMU: sonuc.muib_kontrol = '{AKTIF, MUIB_REMU};

         LR_W: sonuc.abib_kontrol = '{AKTIF, ABIB_LRW};
         SC_W: sonuc.abib_kontrol = '{AKTIF, ABIB_SRW};
         AMOSWAP_W: sonuc.abib_kontrol = '{AKTIF, ABIB_AMOSWAPW};
         AMOADD_W: sonuc.abib_kontrol = '{AKTIF, ABIB_AMOADDW};
         AMOXOR_W: sonuc.abib_kontrol = '{AKTIF, ABIB_AMOXORW};
         AMOAND_W: sonuc.abib_kontrol = '{AKTIF, ABIB_AMOANDW};
         AMOOR_W: sonuc.abib_kontrol = '{AKTIF, ABIB_AMOORW};
         AMOMIN_W: sonuc.abib_kontrol = '{AKTIF, ABIB_AMOMINW};
         AMOMAX_W: sonuc.abib_kontrol = '{AKTIF, ABIB_AMO_MAXW};
         AMOMINU_W: sonuc.abib_kontrol = '{AKTIF, ABIB_AMOMINUW};
         AMOMAXU_W: sonuc.abib_kontrol = '{AKTIF, ABIB_AMOMAXUW};

         FLW: sonuc.abib_kontrol = '{AKTIF, ABIB_LW};
         FSW: sonuc.abib_kontrol = '{AKTIF, ABIB_SW};
         FADD_S: sonuc.os_kontrol = '{AKTIF, OS_FADD, os_rm};
         FSUB_S: sonuc.os_kontrol = '{AKTIF, OS_FSUB, os_rm};
         FMUL_S: sonuc.os_kontrol = '{AKTIF, OS_FMUL, os_rm};
         FDIV_S: sonuc.os_kontrol = '{AKTIF, OS_FDIV, os_rm};
         FSQRT_S: sonuc.os_kontrol = '{AKTIF, OS_FSQRT, os_rm};
         FSGNJ_S: sonuc.os_kontrol = '{AKTIF, OS_FSGNJ, os_rm};
         FSGNJN_S: sonuc.os_kontrol = '{AKTIF, OS_FSGNJN, os_rm};
         FSGNJX_S: sonuc.os_kontrol = '{AKTIF, OS_FSGNJX, os_rm};
         FMIN_S: sonuc.os_kontrol = '{AKTIF, OS_FMIN, os_rm};
         FMAX_S: sonuc.os_kontrol = '{AKTIF, OS_FMAX, os_rm};
         FCVT_W_S: sonuc.os_kontrol = '{AKTIF, OS_FCVT_W_S, os_rm};
         FCVT_WU_S: sonuc.os_kontrol = '{AKTIF, OS_FCVT_WU_S, os_rm};
         FCVT_S_W: sonuc.os_kontrol = '{AKTIF, OS_FCVT_S_W, os_rm};
         FCVT_S_WU: sonuc.os_kontrol = '{AKTIF, OS_FCVT_S_WU, os_rm};
         FMADD_S: sonuc.os_kontrol = '{AKTIF, OS_FMADD, os_rm};
         FNMADD_S: sonuc.os_kontrol = '{AKTIF, OS_FNMADD, os_rm};
         FMSUB_S: sonuc.os_kontrol = '{AKTIF, OS_FMSUB, os_rm};
         FNMSUB_S: sonuc.os_kontrol = '{AKTIF, OS_FNMSUB, os_rm};
         FEQ_S: sonuc.os_kontrol = '{AKTIF, OS_FEQ, os_rm};
         FLT_S: sonuc.os_kontrol = '{AKTIF, OS_FLT, os_rm};
         FLE_S: sonuc.os_kontrol = '{AKTIF, OS_FLE, os_rm};
         FCLASS_S: sonuc.os_kontrol = '{AKTIF, OS_FCLASS, os_rm};
         FMV_X_W: sonuc.amb_kontrol = '{AKTIF, AMB_ADD};
         FMV_W_X: sonuc.amb_kontrol = '{AKTIF, AMB_ADD};

         CSRRW:  sonuc.csr_kontrol = '{AKTIF, CSR_RW};
         CSRRS:  sonuc.csr_kontrol = '{AKTIF, CSR_RS};
         CSRRC:  sonuc.csr_kontrol = '{AKTIF, CSR_RC};
         CSRRWI: sonuc.csr_kontrol = '{AKTIF, CSR_RWI};
         CSRRSI: sonuc.csr_kontrol = '{AKTIF, CSR_RSI};
         CSRRCI: sonuc.csr_kontrol = '{AKTIF, CSR_RCI};

         SH1ADD: sonuc.amb_kontrol = '{AKTIF, ZBA_SH1ADD};
         SH2ADD: sonuc.amb_kontrol = '{AKTIF, ZBA_SH2ADD};
         SH3ADD: sonuc.amb_kontrol = '{AKTIF, ZBA_SH3ADD};

         ANDN: sonuc.amb_kontrol = '{AKTIF, ZBB_ANDN};
         ORN: sonuc.amb_kontrol = '{AKTIF, ZBB_ORN};
         XNOR: sonuc.amb_kontrol = '{AKTIF, ZBB_XNOR};
         CLZ: sonuc.amb_kontrol = '{AKTIF, ZBB_CLZ};
         CTZ: sonuc.amb_kontrol = '{AKTIF, ZBB_CTZ};
         CPOP: sonuc.amb_kontrol = '{AKTIF, ZBB_CPOP};
         MAX: sonuc.amb_kontrol = '{AKTIF, ZBB_MAX};
         MAXU: sonuc.amb_kontrol = '{AKTIF, ZBB_MAXU};
         MIN: sonuc.amb_kontrol = '{AKTIF, ZBB_MIN};
         MINU: sonuc.amb_kontrol = '{AKTIF, ZBB_MINU};
         SEXT_B: sonuc.amb_kontrol = '{AKTIF, ZBB_SEXTB};
         SEXT_H: sonuc.amb_kontrol = '{AKTIF, ZBB_SEXTH};
         ZEXT_H_RV32: sonuc.amb_kontrol = '{AKTIF, ZBB_ZEXTH};
         ROL: sonuc.amb_kontrol = '{AKTIF, ZBB_ROL};
         ROR, RORI: sonuc.amb_kontrol = '{AKTIF, ZBB_ROR};
         ORC_B: sonuc.amb_kontrol = '{AKTIF, ZBB_ORCB};
         REV8_RV32: sonuc.amb_kontrol = '{AKTIF, ZBB_REV8};

         CLMUL:  sonuc.amb_kontrol = '{AKTIF, ZBC_CLMUL};
         CLMULH: sonuc.amb_kontrol = '{AKTIF, ZBC_CLMULH};
         CLMULR: sonuc.amb_kontrol = '{AKTIF, ZBC_CLMULR};

         BCLR, BCLRI: sonuc.amb_kontrol = '{AKTIF, ZBS_BCLR};
         BEXT, BEXTI: sonuc.amb_kontrol = '{AKTIF, ZBS_BEXT};
         BINV, BINVI: sonuc.amb_kontrol = '{AKTIF, ZBS_BINV};
         BSET, BSETI: sonuc.amb_kontrol = '{AKTIF, ZBS_BSET};
         default: ;  // BOŞ
      endcase
   end

   logic
      exc,
      illegal_op,
      ecall,
      ebreak,
      mret,
      fs_illegal,
      illegal_csr_write_to_readonly,
      illegal_csr_non_existent;
   localparam CSR_READ_ONLY = 2'b11;
   always_comb begin
      if (i_zicsr || ir_zicsr) begin
         illegal_csr_write_to_readonly = 0;
         illegal_csr_non_existent = 0;
         if (sonuc.sonuc2_hedef.yazma_hedefi == CSR_yaz) begin
            if (csr_a[11:10] == CSR_READ_ONLY) begin
               illegal_csr_write_to_readonly = 1;
            end
            else begin
               illegal_csr_write_to_readonly = 0;
            end
            if (!(csr_a[9:8] == 2'b00 || csr_a[9:8] == 2'b11)) begin
               illegal_csr_non_existent = 1;
            end
            else begin
               case (csr_a)
                  `CSR_ADDR_MEDELEG, `CSR_ADDR_MIDELEG, `CSR_ADDR_MCOUNTEREN, `CSR_ADDR_MVENVCFG,
                     `CSR_ADDR_MVENVCFGH:
                  illegal_csr_non_existent = 1;
                  default: illegal_csr_non_existent = 0;
               endcase
               //illegal_csr_non_existent = 0;
            end
         end
      end
      else begin
         illegal_csr_write_to_readonly = 0;
         illegal_csr_non_existent = 0;
      end
   end

   always_comb begin
`ifdef cv32e40p_fs_illegal
      if (fs_i == csr_pkg::FS_KAPALI &&
          (sonuc.islenec1_yapi.islenec_tip == OS || sonuc.islenec2_yapi.islenec_tip == OS ||
           sonuc.islenec3_yapi.islenec_tip == OS || sonuc.sonuc1_hedef.yazma_hedefi == OS_yaz ||
           sonuc.sonuc2_hedef.yazma_hedefi == OS_yaz ||  // hiçbir zaman gerçekleşmemesi lazım
         sonuc.os_kontrol.os_aktif))
         fs_illegal = 1;
      else fs_illegal = 0;
`else
      if (fs_i == csr_pkg::FS_KAPALI && ir_f_store) fs_illegal = 1;
      else fs_illegal = 0;
`endif
   end

   always_comb begin
      exc = illegal_op || ecall || ebreak || mret || getir_coz_exc_i || iam;
   end
   logic m_ext, a_ext, f_ext, b_ext;

   always_comb begin
      m_ext = 0;
      a_ext = 0;
      f_ext = 0;
      b_ext = 0;
      if (sonuc.muib_kontrol.muib_aktif) m_ext = 1;
      if (sonuc.abib_kontrol.abib_aktif) begin
         a_ext = 1;
         case (sonuc.abib_kontrol.abib_islem)
            ABIB_LB, ABIB_LH, ABIB_LW, ABIB_LBU, ABIB_LHU, ABIB_SB, ABIB_SH, ABIB_SW: a_ext = 0;
            default: ;  // digerleri A_EXT
         endcase
      end
      if (sonuc.os_kontrol.os_aktif) f_ext = 1;

      case (sonuc.amb_kontrol.amb_islem)
         ZBA_SH1ADD, ZBA_SH2ADD, ZBA_SH3ADD: b_ext = 1;
         ZBB_ANDN, ZBB_ORN, ZBB_XNOR, ZBB_CLZ, ZBB_CTZ, ZBB_CPOP, ZBB_MAX, ZBB_MAXU, ZBB_MIN,
            ZBB_MINU, ZBB_SEXTB, ZBB_SEXTH, ZBB_ZEXTH, ZBB_ROL, ZBB_ROR, ZBB_ORCB, ZBB_REV8:
         b_ext = 1;
         ZBC_CLMUL, ZBC_CLMULH, ZBC_CLMULR: b_ext = 1;
         default: b_ext = 0;
      endcase
   end
   logic misa_uygun_degil;

   localparam int CsrMisaM = 12;
   localparam int CsrMisaA = 0;
   localparam int CsrMisaF = 5;
   localparam int CsrMisaB = 1;
   always_comb begin
      misa_uygun_degil = 0;
      if (!csr_coz_misa_i[CsrMisaM] && m_ext) begin
         misa_uygun_degil = 1;
      end
      else if (!csr_coz_misa_i[CsrMisaA] && a_ext) begin
         misa_uygun_degil = 1;
      end
      else if (!csr_coz_misa_i[CsrMisaF] && f_ext) begin
         misa_uygun_degil = 1;
      end
      else if (!csr_coz_misa_i[CsrMisaB] && b_ext) begin
         misa_uygun_degil = 1;
      end
   end

   always_comb begin
      illegal_op = desteklenmiyor || misa_uygun_degil || fs_illegal ||
         illegal_csr_write_to_readonly || illegal_csr_non_existent;
      /* TODO MISA'YI ASSEMBLYDE KONTROL ET*/
   end

   always_comb begin
      sonuc.olagan_disi.mepc = ps_i;
      sonuc.olagan_disi.debug_buyruk = buyruk_i;
      sonuc.olagan_disi.mtval = 0;
      if (exc || getir_coz_mcause_ic_i != 0 || ps_i == 0) begin
         sonuc.olagan_disi.olagan_disi_durum = 1;
         if (getir_coz_exc_i) begin
            sonuc.olagan_disi.mtval  = getir_coz_mtval_i;
            sonuc.olagan_disi.mcause = getir_coz_mcause_ic_i;
         end
         else if (!getir_coz_exc_i && (getir_coz_mcause_ic_i == `NOT_EXC_INV || ps_i == 0)) begin
            sonuc.olagan_disi.mcause = `NOT_EXC_INV;
            sonuc.olagan_disi.mtval = 0;
            sonuc.olagan_disi.olagan_disi_durum = 0;
         end
         else if (illegal_op) begin
            sonuc.olagan_disi.mtval  = buyruk_i;
            sonuc.olagan_disi.mcause = `EXC_II;
         end
         else if (ecall) begin
            sonuc.olagan_disi.mtval  = 0;
            sonuc.olagan_disi.mcause = `EXC_ECALL;
         end
         else if (ebreak) begin
            sonuc.olagan_disi.mtval  = 0;
            sonuc.olagan_disi.mcause = `EXC_BP;
         end
         else if (mret) begin
            sonuc.olagan_disi.mtval  = 0;
            sonuc.olagan_disi.mcause = `EXC_MRET;
         end
         else if (iam) begin
            sonuc.olagan_disi.mtval  = ps_sonraki_adres_o;
            sonuc.olagan_disi.mcause = `EXC_IAM;
         end
         else begin
            sonuc.olagan_disi.mtval  = 0;
            sonuc.olagan_disi.mcause = 0;
         end
      end
      else begin
         sonuc.olagan_disi.olagan_disi_durum = 0;
         sonuc.olagan_disi.debug_buyruk = buyruk_i;
         sonuc.olagan_disi.mcause = 0;
      end
   end

   always_comb begin
      ecall  = buyruk_i inside {ECALL};
      ebreak = buyruk_i inside {EBREAK};
      mret   = buyruk_i inside {MRET};
   end

   always_ff @(posedge clk_i) begin
      if (!rstn_i || bh_bosalt_i) begin
         sonuc_o <= '{
            BOS_ISLENEC,
            BOS_ISLENEC,
            BOS_ISLENEC,
            AMB_KAPALI,
            ABIB_KAPALI,
            MUIB_KAPALI,
            CSR_KAPALI,
            BRANCH_KAPALI,
            OS_KAPALI,
            BOS_HEDEF,
            BOS_HEDEF,
            BOS_OLAGAN_DISI
         };
      end
      else if (!bh_duraklat_i) begin
         sonuc_o <= sonuc;
      end
   end

   assign csr_adres_o = csr_a;
endmodule
