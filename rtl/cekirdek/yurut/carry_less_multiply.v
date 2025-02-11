`timescale 1ns / 1ps
module carry_less_multiply (
   input  wire [31:0] sayi1_i,
   input  wire [31:0] sayi2_i,
   output wire [63:0] sonuc_o
);
   reg [31:0] temp_a;
   reg [31:0] temp_b;
   reg [63:0] temp_result;
   integer i;

   always @(*) begin
      temp_a = sayi1_i;
      temp_b = sayi2_i;
      temp_result = 64'b0;

      for (i = 0; i < 32; i = i + 1) begin
         if (temp_b[i]) begin
            temp_result = temp_result ^ (temp_a << i);
         end
      end
   end

   assign sonuc_o = temp_result;
endmodule

