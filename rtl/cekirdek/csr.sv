`timescale 1ns / 1ps

`include "sabitler.vh"
`include "yapilandirma.vh"

import csr_pkg::*;
module csr #(
   parameter TIME_NANOSANIYE_CEVRIM_ORANI = 10
) (
   input wire clk_i,
   input wire rstn_i,

   input wire [11:0] adres_i,
   input wire [11:0] yaz_adres_i,
   input wire [`SOZCUK_GENISLIGI_BIT-1:0] veri_i,
   input wire yaz_i,

   input wire buyruk_tamamlandi_i,
   // FP Erisim
   output wire [2:0] frm_o,
   output csr_pkg::fs_t fs_o,
   input wire [4:0] fflag_i,
   input wire fflag_yaz_i,

   output wire [`MXLEN-1:0] csr_o,
   output wire [25:0] misa_ext_o,

   output reg bh_bosalt_o,
   output reg bh_ex_atla_o,
   output reg [`ADRES_GENISLIGI_BIT-1:0] bh_atla_pc_o,

   // mcause, mepc, mtval
   input wire [3:0] gy_mcause_ic_i,
   input wire [`ADRES_GENISLIGI_BIT-1:0] gy_mepc_i,
   input wire [`ADRES_GENISLIGI_BIT-1:0] gy_mtval_i,
   input wire exc_yaz_i,

   input wire yurut_stall_i,
   input wire l1v_stall_i,
   input wire l1b_stall_i,
   input wire gs_stall_i
);
   reg [`MXLEN-1:0] okunan_cmb;
   csr_pkg::fs_t fs;

   //unpriviliged sayaç csrları
   reg [`SOZCUK_GENISLIGI_BIT*2-1:0] m_cycle;
   reg [`SOZCUK_GENISLIGI_BIT*2-1:0] m_time;
   reg [`SOZCUK_GENISLIGI_BIT*2-1:0] m_instret;

   //unpriviliged kayan nokta csrları
   localparam FCSR_ROUNDING_MODE_BASLANGIC = 5;
   localparam FCSR_ROUNDING_MODE_BITIS = 7;
   localparam FCSR_AE_BASLANGIC = 0;
   localparam FCSR_AE_BITIS = 4;
   localparam FCSR_AYRILAN_BASLANGIC = 8;
   localparam FCSR_AYRILAN_BITIS = 31;
   reg  [                 7:0] fcsr;
   wire [                 2:0] frm = fcsr[FCSR_ROUNDING_MODE_BITIS:FCSR_ROUNDING_MODE_BASLANGIC];
   wire [                 4:0] fflags = fcsr[FCSR_AE_BITIS:FCSR_AE_BASLANGIC];

   // machine information registers, saltokunur
   wire [`CSR_MVENDOR_BIT-1:0] mvendorid = `CSR_MVENDOR_DEGER;
   wire [`CSR_MARCHID_BIT-1:0] marchid = `CSR_MARCHID_DEGER;
   wire [ `CSR_MIMPID_BIT-1:0] mimpid = `CSR_MIMPID_DEGER;
   wire [`CSR_MHARTID_BIT-1:0] mhartid = `CSR_MHARTID_DEGER;

   // misa
   wire [                 1:0] misa_mxl = 2'b01;
   wire [         `MXLEN-3:26] misa_warl = 0;
   reg  [                25:0] misa_ext;
   wire [                25:0] misa_ext_baslangic_ve_maske = 26'b00000000000001000100100011;
   assign misa_ext_o = misa_ext;

   localparam MSTATUS_SD_BIT = 31;
   localparam MSTATUS_WPRI_H0_BITIS = 30;
   localparam MSTATUS_WPRI_H0_BASLANGIC = 23;
   localparam MSTATUS_0_BITIS = 22;
   localparam MSTATUS_0_BASLANGIC = 17;
   localparam MSTATUS_XS_BITIS = 16;
   localparam MSTATUS_XS_BASLANGIC = 15;
   localparam MSTATUS_FS_BITIS = 14;
   localparam MSTATUS_FS_BASLANGIC = 13;
   localparam MSTATUS_MPP_BITIS = 12;
   localparam MSTATUS_MPP_BASLANGIC = 11;
   localparam MSTATUS_MPIE_BIT = 7;
   localparam MSTATUS_WPRI_H1_BIT = 4;
   localparam MSTATUS_MIE_BIT = 3;
   localparam MSTATUS_WPRI_H2_BIT = 2;
   localparam MSTATUS_WPRI_H3_BIT = 0;

   reg mstatus_sd;
   reg [7:0] mstatus_wpri_h0;
   wire [1:0] mstatus_xs = 2'b00;
   reg [1:0] mstatus_fs;
   wire [1:0] mstatus_mpp = 2'b11;
   reg mstatus_mpie;
   reg mstatus_wpri_h1;
   reg mstatus_mie;
   reg mstatus_wpri_h2;
   reg mstatus_wpri_h3;

   //mstatush
   reg [25:0] mstatush_wpri_0;
   reg [3:0] mstatush_wpri_1;

   //mtvec
   reg [`MXLEN-1:2] mtvec_base;
   wire [`MXLEN-1:0] mtvec_def_hw = `BASLANGIC_ADRESI;
   reg [1:0] mtvec_mode;

   // mie ve mip
   reg mie_meie;
   reg mie_mtie;
   reg mie_msie;

   reg mip_meip;
   reg mip_mtip;
   reg mip_msip;

   //mcountinhibit
   localparam MCOUNTINHIBIT_IR_BIT = 2;
   localparam MCOUNTINHIBIT_CY_BIT = 0;
   reg [31:0] mcountinhibit;

   // mscratch
   reg [`MXLEN-1:0] mscratch;

   // mepc
   reg [`MXLEN-1:2] mepc;  // first two bits are always 0 but allow write even on IALIGN=32 why?

   // mcause
   wire [`MXLEN-2:0] desteklenen_exceptionlar_maske = 31'b0000000000000000000010000111111;
   reg mcause_int;
   reg [`MXLEN-2:0] mcause_ex_code;

   //mtval
   reg [`MXLEN-1:0] mtval;  // address exceptionlarında kullan

   reg [`MXLEN-2:0] mcause_i_ex_code_cmb;

   reg [63:0] hpmcounter3;  // exe stall
   reg [63:0] hpmcounter4;  // l1v Stall
   reg [63:0] hpmcounter5;  // L1B Stall (nop bubble)
   reg [63:0] hpmcounter6;  // Branch Miss Pred pen

   always @* begin
      case (gy_mcause_ic_i)
         `EXC_IAM: begin
            mcause_i_ex_code_cmb = `EXC_IAM_CODE;
         end
         `EXC_IAF: begin
            mcause_i_ex_code_cmb = `EXC_IAF_CODE;
         end
         `EXC_II: begin
            mcause_i_ex_code_cmb = `EXC_II_CODE;
         end
         `EXC_BP: begin
            mcause_i_ex_code_cmb = `EXC_BP_CODE;
         end
         `EXC_LAM: begin
            mcause_i_ex_code_cmb = `EXC_LAM_CODE;
         end
         `EXC_LAF: begin
            mcause_i_ex_code_cmb = `EXC_LAF_CODE;
         end
         `EXC_SAM: begin
            mcause_i_ex_code_cmb = `EXC_SAM_CODE;
         end
         `EXC_SAF: begin
            mcause_i_ex_code_cmb = `EXC_SAF_CODE;
         end
         `EXC_ECALL: begin
            mcause_i_ex_code_cmb = `EXC_ECALL_CODE;
         end
         default: mcause_i_ex_code_cmb = 0;  // hiç girmemesi lazım.
      endcase
   end

   /*
    TODO: FPU GELINCE SD FS BITLERINI GUNCELLE
*/

   integer i = 0;
   always @(posedge clk_i) begin
      if (!rstn_i) begin
         hpmcounter3 <= 0;
         hpmcounter4 <= 0;
         hpmcounter5 <= 0;
         hpmcounter6 <= 0;
         fcsr <= 8'b0;
         m_cycle <= 64'b0;
         m_time <= 64'b0;
         m_instret <= 64'b0;
         misa_ext <= misa_ext_baslangic_ve_maske;

         mstatus_sd <= 1'b0;
         mstatus_wpri_h0 <= 8'b0;
         //mstatus_xs <= 2'b0;
         mstatus_fs <= 2'b0;
         mstatus_mpie <= 1'b1;
         mstatus_wpri_h1 <= 1'b0;
         mstatus_mie <= 1'b0;
         mstatus_wpri_h2 <= 1'b0;
         mstatus_wpri_h3 <= 1'b0;

         mstatush_wpri_0 <= 26'b0;
         mstatush_wpri_1 <= 4'b0;
         mtvec_base <= mtvec_def_hw[2+:30];
         mtvec_mode <= 2'b0;
         fs <= FS_KIRLI;
         mie_meie <= 0;
         mie_mtie <= 0;
         mie_msie <= 0;

         mip_meip <= 0;
         mip_mtip <= 0;
         mip_msip <= 0;

         mcountinhibit <= 32'b0;

         mscratch <= `MXLEN'b0;

         mepc <= {30{1'b0}};  // hardcodelamadan cozemedim ya da iceriye localparam alınacak

         mcause_int <= 0;
         mcause_ex_code <= 0;

         mtval <= 0;

         bh_atla_pc_o <= 0;  //{mepc, 2'b00};
         bh_bosalt_o <= 0;
         bh_ex_atla_o <= 0;
      end
      else begin
         if (!mcountinhibit[MCOUNTINHIBIT_CY_BIT]) begin
            m_cycle <= m_cycle + 1;
         end
         m_time <= m_time + TIME_NANOSANIYE_CEVRIM_ORANI;
         if (buyruk_tamamlandi_i && !mcountinhibit[MCOUNTINHIBIT_IR_BIT]) begin
            m_instret <= m_instret + 1;
         end

         if (!mcountinhibit[3] && yurut_stall_i) begin
            hpmcounter3 <= hpmcounter3 + 1;
         end

         if (!mcountinhibit[4] && l1v_stall_i) begin
            hpmcounter4 <= hpmcounter4 + 1;
         end

         if (!mcountinhibit[5] && l1b_stall_i) begin
            hpmcounter5 <= hpmcounter5 + 1;
         end

         if (!mcountinhibit[6] && gs_stall_i) begin
            hpmcounter6 <= hpmcounter6 + 1;
         end

         if (!mcountinhibit[3] && yurut_stall_i) begin
            hpmcounter3 <= hpmcounter3 + 1;
         end

         if (!mcountinhibit[4] && l1v_stall_i) begin
            hpmcounter4 <= hpmcounter4 + 1;
         end

         if (!mcountinhibit[5] && l1b_stall_i) begin
            hpmcounter5 <= hpmcounter5 + 1;
         end

         if (!mcountinhibit[6] && gs_stall_i) begin
            hpmcounter6 <= hpmcounter6 + 1;
         end

         if (exc_yaz_i) begin
            if (gy_mcause_ic_i == `EXC_MRET) begin
               bh_atla_pc_o <= {mepc, 2'b00};
               bh_bosalt_o  <= 1;
               bh_ex_atla_o <= 1;
               $display("csr mret sebepli bh atlatması: %h", gy_mepc_i);
            end
            else begin
               mepc <= gy_mepc_i[2+:30];
               mtval <= gy_mtval_i;
               mcause_ex_code <= mcause_i_ex_code_cmb;
               bh_ex_atla_o <= 1;
               bh_bosalt_o <= 1;
               $display("csr exc sebepli bh atlatması %d", mcause_i_ex_code_cmb);
               if (mtvec_mode == `MTVEC_MODE_DIRECT) begin
                  bh_atla_pc_o <= {mtvec_base, 2'b00};
               end
               else if (mtvec_mode == `MTVEC_MODE_VECTORED) begin
                  bh_atla_pc_o <= {
                     mtvec_base + (mcause_i_ex_code_cmb << 2), 1'b0
                  };  // TODO ILK BUGDA BURAYA BAKumarım bozmaz bir seyi;
               end
            end
         end
         else begin
            if (yaz_i) begin
               // exception yoksa pipe'ı flushlayıp atla
               bh_ex_atla_o <= 1;
               bh_bosalt_o  <= 1;
               $display("csr yazma sebepli bh atlatması");
               bh_atla_pc_o <= gy_mepc_i + 4;
               //bh'nı geriyazdaki ps+4'e yollamalı, pipelineı flushlamalı
               case (yaz_adres_i)
                  `CSR_ADDR_FFLAGS_H: begin
                     for (i = 0; 5 > i; i = i + 1) begin
                        if (veri_i[i]) begin
                           fcsr[i] <= veri_i[i];
                        end
                     end
                  end
                  `CSR_ADDR_FCSR: begin
                     fcsr <= veri_i[7:0];
                  end
                  `CSR_ADDR_FRM:
                  fcsr[FCSR_ROUNDING_MODE_BITIS:FCSR_ROUNDING_MODE_BASLANGIC] <= veri_i[2:0];
                  `CSR_ADDR_FFLAGS: fcsr[FCSR_AE_BITIS:FCSR_AE_BASLANGIC] <= veri_i[4:0];
                  `CSR_ADDR_MISA: begin
                     for (i = 0; 26 > i; i = i + 1) begin
                        if (misa_ext_baslangic_ve_maske[i] && i != 8) begin  // i != 8 RV32I kapatılmasını engellemek için. doğrudan bi maskeyle andlememe sebebimiz de bu  
                           misa_ext[i] <= veri_i[i];
                        end
                     end
                     misa_ext <= veri_i[25:0] & misa_ext_baslangic_ve_maske;
                     misa_ext[8] <= 1;  // RV32I'nin açık olmasına zorla
                  end
                  `CSR_ADDR_MSTATUS: begin
                     mstatus_wpri_h0 <= veri_i[30:23];
                     /*
                            riscv-privileged-20211203 Sf. 27
                             */
                     if (veri_i[14:13] == 2'b00) begin
                        fs <= FS_KAPALI;
                     end
                     else begin
                        fs <= misa_ext[`CSR_MISA_F] ? FS_KIRLI : FS_KAPALI;
                     end

                     mstatus_fs <= veri_i[14:13];
                     mstatus_mpie <= veri_i[7];
                     mstatus_wpri_h1 <= veri_i[4];
                     mstatus_mie <= veri_i[3];
                     mstatus_wpri_h2 <= veri_i[2];
                     mstatus_wpri_h3 <= veri_i[0];
                  end
                  `CSR_ADDR_MSTATUSH: begin
                     mstatush_wpri_0 <= veri_i[31:6];
                     mstatush_wpri_1 <= veri_i[3:0];
                  end
                  `CSR_ADDR_MTVEC: begin
                     mtvec_base <= veri_i[`MXLEN-1:2];
                     if (veri_i[1:0] < 2) begin
                        mtvec_mode <= 2'b00;
                     end
                  end
                  `CSR_ADDR_MIE: begin
                     mie_meie <= veri_i[11];
                     mie_mtie <= veri_i[7];
                     mie_msie <= veri_i[3];
                  end

                  `CSR_ADDR_MCYCLE: m_cycle[31:0] <= veri_i;
                  `CSR_ADDR_MCYCLEH: m_cycle[63:32] <= veri_i;
                  `CSR_ADDR_MINSTRET: m_instret[31:0] <= veri_i;
                  `CSR_ADDR_MINSTRETH: m_instret[63:32] <= veri_i;

                  `CSR_ADDR_MCOUNTINHIBIT: begin
                     mcountinhibit[MCOUNTINHIBIT_CY_BIT] <= veri_i[MCOUNTINHIBIT_CY_BIT];
                     mcountinhibit[MCOUNTINHIBIT_IR_BIT] <= veri_i[MCOUNTINHIBIT_IR_BIT];
                     mcountinhibit[3] <= veri_i[3];
                     mcountinhibit[4] <= veri_i[4];
                     mcountinhibit[5] <= veri_i[5];
                     mcountinhibit[6] <= veri_i[6];
                  end

                  `CSR_ADDR_MSCRATCH: mscratch <= veri_i;

                  `CSR_ADDR_MEPC: mepc <= {veri_i[`MXLEN-1:2]};

                  `CSR_ADDR_MCAUSE: begin
                     mcause_int <= veri_i[`MXLEN-1];
                     //for(i = 0; i < 31; i = i + 1) begin
                     //  if(desteklenen_exceptionlar_maske[i]) begin
                     //    mcause_ex_code[i] <= veri_i[i];
                     //end
                     //end
                     mcause_ex_code <= veri_i[30:0] & desteklenen_exceptionlar_maske;
                  end

                  `CSR_ADDR_MTVAL: begin
                     mtval <= veri_i;
                  end
                  `CSR_ADDR_MHPMCOUNTER3: hpmcounter3[31:0] <= veri_i;
                  `CSR_ADDR_MHPMCOUNTER4: hpmcounter4[31:0] <= veri_i;
                  `CSR_ADDR_MHPMCOUNTER5: hpmcounter5[31:0] <= veri_i;
                  `CSR_ADDR_MHPMCOUNTER6: hpmcounter6[31:0] <= veri_i;
                  `CSR_ADDR_MHPMCOUNTER3H: hpmcounter3[63:32] <= veri_i;
                  `CSR_ADDR_MHPMCOUNTER4H: hpmcounter4[63:32] <= veri_i;
                  `CSR_ADDR_MHPMCOUNTER5H: hpmcounter5[63:32] <= veri_i;
                  `CSR_ADDR_MHPMCOUNTER6H: hpmcounter6[63:32] <= veri_i;
                  default: ;  // diğerlerine yazma durumu yok
               endcase
            end
            else begin
               bh_ex_atla_o <= 0;
               bh_bosalt_o  <= 0;
            end
         end

      end
   end

   wire sd = fs == FS_KIRLI ? 1 : 0;
   always @(*) begin
      case (adres_i)

         `CSR_ADDR_FCSR:   okunan_cmb = fcsr;
         `CSR_ADDR_FRM:    okunan_cmb = fcsr[FCSR_ROUNDING_MODE_BITIS:FCSR_ROUNDING_MODE_BASLANGIC];
         `CSR_ADDR_FFLAGS: okunan_cmb = fcsr[FCSR_AE_BITIS:FCSR_AE_BASLANGIC];

         `CSR_ADDR_MVENDORID: okunan_cmb = mvendorid;
         `CSR_ADDR_MARCHID:   okunan_cmb = marchid;
         `CSR_ADDR_MIMPID:    okunan_cmb = mimpid;
         `CSR_ADDR_MHARTID:   okunan_cmb = mhartid;

         `CSR_ADDR_MISA: okunan_cmb = {misa_mxl, misa_warl, misa_ext};
         `CSR_ADDR_MSTATUS:
         okunan_cmb = {
            sd,
            mstatus_wpri_h0,
            6'b0,
            mstatus_xs,
            fs_t_deger(fs),
            2'b0,
            2'b0,
            1'b0,
            3'b0,
            mstatus_wpri_h1,
            1'b0,
            mstatus_wpri_h2,
            1'b0,
            mstatus_wpri_h3
         };
         `CSR_ADDR_MSTATUSH: okunan_cmb = {mstatush_wpri_0, 1'b0, 1'b0, mstatush_wpri_1};
         `CSR_ADDR_MTVEC: okunan_cmb = {mtvec_base, mtvec_mode};
         `CSR_ADDR_MIE: okunan_cmb = {32'b0};
         `CSR_ADDR_MIP: okunan_cmb = {32'b0};

         `CSR_ADDR_CYCLE, `CSR_ADDR_MCYCLE:     okunan_cmb = m_cycle[31:0];
         `CSR_ADDR_INSTRET, `CSR_ADDR_MINSTRET: okunan_cmb = m_instret[31:0];
         `CSR_ADDR_TIME:                        okunan_cmb = m_time[31:0];

         `CSR_ADDR_CYCLEH, `CSR_ADDR_MCYCLEH:     okunan_cmb = m_cycle[63:32];
         `CSR_ADDR_INSTRETH, `CSR_ADDR_MINSTRETH: okunan_cmb = m_instret[63:32];
         `CSR_ADDR_TIMEH:                         okunan_cmb = m_time[63:32];

         `CSR_ADDR_MCOUNTINHIBIT: okunan_cmb = mcountinhibit;

         `CSR_ADDR_MSCRATCH: okunan_cmb = mscratch;

         `CSR_ADDR_MEPC: okunan_cmb = {mepc, 2'b00};

         `CSR_ADDR_MCAUSE:                                okunan_cmb = {mcause_int, mcause_ex_code};
         `CSR_ADDR_MTVAL:                                 okunan_cmb = {mtval};
         `CSR_ADDR_MHPMCOUNTER3, `CSR_ADDR_HPMCOUNTER3:   okunan_cmb = hpmcounter3[31:0];
         `CSR_ADDR_MHPMCOUNTER4, `CSR_ADDR_HPMCOUNTER4:   okunan_cmb = hpmcounter4[31:0];
         `CSR_ADDR_MHPMCOUNTER5, `CSR_ADDR_HPMCOUNTER5:   okunan_cmb = hpmcounter5[31:0];
         `CSR_ADDR_MHPMCOUNTER6, `CSR_ADDR_HPMCOUNTER6:   okunan_cmb = hpmcounter6[31:0];
         `CSR_ADDR_MHPMCOUNTER3H, `CSR_ADDR_HPMCOUNTER3H: okunan_cmb = hpmcounter3[63:32];
         `CSR_ADDR_MHPMCOUNTER4H, `CSR_ADDR_HPMCOUNTER4H: okunan_cmb = hpmcounter4[63:32];
         `CSR_ADDR_MHPMCOUNTER5H, `CSR_ADDR_HPMCOUNTER5H: okunan_cmb = hpmcounter5[63:32];
         `CSR_ADDR_MHPMCOUNTER6H, `CSR_ADDR_HPMCOUNTER6H: okunan_cmb = hpmcounter6[63:32];
         default:                                         okunan_cmb = 32'b0;
      endcase
   end

   assign csr_o = okunan_cmb;
   assign frm_o = frm;
   assign fs_o  = fs;

endmodule
