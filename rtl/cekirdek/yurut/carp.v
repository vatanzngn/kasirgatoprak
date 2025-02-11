`timescale 1ns / 1ps
module carp (
   input  wire [31:0] ilksayi_i,
   ikincisayi_i,
   input  wire [ 1:0] buyruk_i,   // mul=00, mulh=01, mulhsu=10, mulhu=11
   output wire [31:0] sonuc_o
);
   reg [31:0] a1, b1;
   //wire [63:0] sonw;
   reg [63:0] sonr;
   reg sign;
   reg [31:0] o1;

   always @(*) begin
      case (buyruk_i)
         2'b00, 2'b01: begin  // mul, mulh
            a1   = ilksayi_i[31] ? (~ilksayi_i + 1) : ilksayi_i;
            b1   = ikincisayi_i[31] ? (~ikincisayi_i + 1) : ikincisayi_i;
            sign = ilksayi_i[31] ^ ikincisayi_i[31];
         end
         2'b10: begin  // mulhsu
            a1   = ilksayi_i[31] ? (~ilksayi_i + 1) : ilksayi_i;
            b1   = ikincisayi_i;
            sign = ilksayi_i[31];
         end
         2'b11: begin  // mulhu
            a1   = ilksayi_i;
            b1   = ikincisayi_i;
            sign = 1'b0;
         end
      endcase

      sonr = a1 * b1;
      if (sign) begin
         sonr = ~sonr + 1;
      end

      o1 = buyruk_i != 2'b00 ? sonr[63:32] : sonr[31:0];
   end

   assign sonuc_o = o1;

endmodule
