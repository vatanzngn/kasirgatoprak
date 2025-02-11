import coz_pkg::*;
import sabitler_pkg::*;
module yazmac_obegi (
   input logic clk_i,
   input logic rstn_i,
   input logic [$clog2(REGISTER_SAYISI)-1:0] rs1_i,
   input logic rs1_fp_oku,
   input logic [$clog2(REGISTER_SAYISI)-1:0] rs2_i,
   input logic rs2_fp_oku,
   input logic [$clog2(REGISTER_SAYISI)-1:0] rs3_i,
   input logic [$clog2(REGISTER_SAYISI)-1:0] rd_i,
   input logic [SOZCUK_GENISLIGI-1:0] rd_veri_i,
   input logic rd_yaz_i,
   input logic rd_fp_yaz_i,

   output logic [SOZCUK_GENISLIGI-1:0] rs1,
   output logic [SOZCUK_GENISLIGI-1:0] rs2,
   output logic [SOZCUK_GENISLIGI-1:0] rs3
);

   logic [SOZCUK_GENISLIGI-1:0] int_yazmac[REGISTER_SAYISI];
   logic [SOZCUK_GENISLIGI-1:0] fp_yazmac [REGISTER_SAYISI];

   always_comb begin
      rs1 = rs1_fp_oku ? fp_yazmac[rs1_i] : int_yazmac[rs1_i];
      rs2 = rs2_fp_oku ? fp_yazmac[rs2_i] : int_yazmac[rs2_i];
      rs3 = fp_yazmac[rs3_i];
   end

   always_ff @(posedge clk_i) begin
      if (~rstn_i) begin
         for (int i = 0; i < REGISTER_SAYISI; i++) begin
            int_yazmac[i] <= 32'b0;
            fp_yazmac[i]  <= 32'hffffffff;
         end
      end
      else begin
         if (rd_yaz_i && !rd_fp_yaz_i && rd_i != 0) begin
            int_yazmac[rd_i] <= rd_veri_i;
         end
         if (rd_yaz_i && rd_fp_yaz_i) begin
            fp_yazmac[rd_i] <= rd_veri_i;
         end
      end
   end
endmodule
