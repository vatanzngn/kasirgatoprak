// Kasirga Toprak UART (TX) 

`timescale 1ns / 1ps

module uart_verici (
   input  wire        clk_i,
   input  wire        rstn_i,
   input  wire [15:0] baud_clk_i,
   input  wire        tx_en_i,
   input  wire        tx_yaz_en,
   input  wire [ 7:0] tx_veri_i,
   output wire        tx_veri_o,
   output wire        tx_fifo_bos,
   output wire        tx_fifo_dolu
);

   localparam TX_IDLE = 2'b00;
   localparam TX_START = 2'b01;
   localparam TX_DATA = 2'b10;
   localparam TX_STOP = 2'b11;
   reg [1:0] DURUM;

   reg tx_fifo_oku_en;
   wire [7:0] tx_fifo_oku_veri;
   reg [7:0] tx_veri_tmp;
   reg [3:0] tx_bitindex_r;
   reg [15:0] tx_baudsayac_r;
   reg tx_veri_r;
   assign tx_veri_o = tx_veri_r;

   // Fifo 
   t_fifo tx_fifo (
      .clk_i    (clk_i),
      .rstn_i   (rstn_i),
      .oku_en_i (tx_fifo_oku_en),
      .yaz_en_i (tx_yaz_en),
      .data_i   (tx_veri_i),
      .data_o   (tx_fifo_oku_veri),
      .fifo_bos (tx_fifo_bos),
      .fifo_dolu(tx_fifo_dolu)
   );


   always @(posedge clk_i) begin
      if (!rstn_i) begin
         DURUM <= TX_IDLE;
         tx_veri_r <= 1;
         tx_baudsayac_r <= 0;
         tx_veri_tmp <= 0;
         tx_fifo_oku_en <= 0;
      end
      else begin
         case (DURUM)
            TX_IDLE: begin
               //Bosta beklerken yazmaclar temizlenir.
               tx_veri_r      <= 1'b1;
               tx_bitindex_r  <= 4'd0;
               tx_baudsayac_r <= 16'd0;
               tx_veri_tmp    <= 8'd0;
               tx_fifo_oku_en <= 1'b0;

               //Basla sinyali gelince
               if (tx_en_i & !tx_fifo_bos) begin
                  DURUM          <= TX_START;
                  tx_fifo_oku_en <= 1'b1;
               end
            end

            TX_START: begin
               tx_fifo_oku_en <= 1'b0;
               if (tx_baudsayac_r == 16'd0) begin
                  if (tx_fifo_bos) begin
                     DURUM <= TX_IDLE;
                  end
                  else begin
                     tx_veri_tmp <= tx_fifo_oku_veri;
                     tx_veri_r <= 1'b0;
                     tx_baudsayac_r <= tx_baudsayac_r + 1;
                  end
               end
               else if (tx_baudsayac_r < baud_clk_i) begin
                  tx_baudsayac_r <= tx_baudsayac_r + 1;
               end
               else begin
                  DURUM <= TX_DATA;
                  tx_baudsayac_r <= 16'd0;
                  tx_bitindex_r <= 4'd0;
               end
            end

            TX_DATA: begin
               if (tx_bitindex_r < 4'd8) begin
                  tx_veri_r <= tx_veri_tmp[tx_bitindex_r]
                     ;  //Veri shiftlenerek baud_clk_i süresi boyunca veri_o ya iletiliyor.
                  if (tx_baudsayac_r < baud_clk_i) begin
                     tx_baudsayac_r <= tx_baudsayac_r + 1;
                  end
                  else begin
                     tx_baudsayac_r <= 16'd0;
                     tx_bitindex_r  <= tx_bitindex_r + 1;
                  end
               end
               else begin
                  DURUM <= TX_STOP;
                  tx_veri_r <= 1'b1;
               end
            end

            TX_STOP: begin
               if (tx_baudsayac_r < baud_clk_i) begin  // Hizi limitleyen yer, burasi -1 de yapilabilir. - Burasinin aslinda -3 olmasi gerekmekte ancak protokol olarak bir ihlal olmadigindan 1 cycle sonra lowa dusuyor halt sinyalinden (- sayisi arttikca max freq dusuyor) .
                  tx_baudsayac_r <= tx_baudsayac_r + 1;
               end
               else begin
                  DURUM <= TX_IDLE;
               end
            end
         endcase
      end
   end

endmodule
