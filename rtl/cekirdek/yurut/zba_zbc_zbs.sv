import yurut_pkg::*;
module zba_zbc_zbs (
   input wire [31:0] veri1_i,
   veri2_i,
   input amb_islem_t islem_i,
   output wire [31:0] sonuc_o

);
   reg [31:0] sonuc_cmb;

   assign sonuc_o = sonuc_cmb;

   wire [63:0] carpim;

   carry_less_multiply aa (
      .sayi1_i(veri1_i),
      .sayi2_i(veri2_i),
      .sonuc_o(carpim)
   );
   always_comb begin
      case (islem_i)
         ZBA_SH1ADD: sonuc_cmb = veri2_i + (veri1_i << 1);
         ZBA_SH2ADD: sonuc_cmb = veri2_i + (veri1_i << 2);
         ZBA_SH3ADD: sonuc_cmb = veri2_i + (veri1_i << 3);
         ZBC_CLMUL: sonuc_cmb = carpim[31:0];
         ZBC_CLMULH: sonuc_cmb = carpim[63:32];
         ZBC_CLMULR: sonuc_cmb = carpim[62:31];
         ZBS_BCLR: sonuc_cmb = veri1_i & ~(1 << (veri2_i & 5'b11111));
         ZBS_BEXT: sonuc_cmb = (veri1_i >> (veri2_i & 5'b11111)) & 1;
         ZBS_BINV: sonuc_cmb = veri1_i ^ (1 << (veri2_i & 5'b11111));
         ZBS_BSET: sonuc_cmb = veri1_i | (1 << (veri2_i & 5'b11111));
         default: sonuc_cmb = 32'd0;
      endcase
   end
endmodule
