
import oncoz_pkg::*;
import riscv_instr::*;
module oncozucu (
   input [31:0] buyruk_i,
   output oncoz_pkg::dallanma_turu_t dallanma_turu_o
);
   always_comb begin
      casex (buyruk_i)
         JAL: dallanma_turu_o = oncoz_pkg::JAL;
         JALR: dallanma_turu_o = oncoz_pkg::JALR;
         BEQ, BNE, BLT, BLTU, BGE, BGEU: dallanma_turu_o = oncoz_pkg::DALLANMA;
         default: dallanma_turu_o = oncoz_pkg::DALLANMA_YOK;
      endcase
   end
endmodule
