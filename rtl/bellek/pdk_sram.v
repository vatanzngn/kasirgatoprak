`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2024 12:36:58 PM
// Design Name: 
// Module Name: pdk_sram
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module pdk_sram #(
   parameter SATIR_SAYISI = 64,
   parameter SOZCUK_GENISLIGI = 32,
   localparam ADRES_GENISLIGI = $clog2(SATIR_SAYISI)
) (

   input wire CE,   //chip enable (beklenti active-high'a göre diğer durumda tersini al )
   input wire WEB,  // write enable (beklenti active-low'a göre diğer durumda tersini al)
   input wire OEB,  // output enable (beklenti active-low'a göre diğer durumda tersini al)
   input wire CSB,  // chip select bar (beklenti active-low'a göre sürekli 0)

   input  wire [ ADRES_GENISLIGI-1:0] A,  // oku/yaz adresi
   input  wire [SOZCUK_GENISLIGI-1:0] I,  // girecek veri
   output reg  [SOZCUK_GENISLIGI-1:0] O   // okunacak veri
);

   reg [SOZCUK_GENISLIGI-1:0] sram_veri[0:SATIR_SAYISI-1];
   reg [SOZCUK_GENISLIGI-1:0] data_out;

   wire RE = ~CSB && WEB;
   wire WE = ~CSB && ~WEB;

   integer i;

   initial begin
      for (i = 0; i < SATIR_SAYISI; i = i + 1) begin
         sram_veri[i] = 0;
      end
   end
   always @(posedge CE) if (RE) data_out <= sram_veri[A];
   always @(posedge CE) if (WE) sram_veri[A] <= I;

   always @(data_out or OEB)
      if (!OEB) O = data_out;
      else O = 32'b10101010101010101010101010101010;
endmodule
