// Kasırga Toprak UART RX

`timescale 1ns / 1ps

module uart_alici (
   input  wire        clk_i,
   input  wire        rstn_i,
   input  wire [15:0] baud_clk_i,
   input  wire        rx_en_i,
   input  wire        rx_oku_en,
   input  wire        rx_veri_i,
   output wire [ 7:0] rx_veri_o,
   output wire        rx_fifo_bos,
   output wire        rx_fifo_dolu
);


   localparam RX_IDLE = 2'b00;
   localparam RX_START = 2'b01;
   localparam RX_DATA = 2'b10;
   localparam RX_STOP = 2'b11;
   reg [1:0] DURUM;

   reg [3:0] rx_bitindex_r;
   reg [15:0] rx_baudsayac_r;
   reg [7:0] rx_veri_r;
   reg rx_veri_gecerli;

   t_fifo rx_fifo (
      .clk_i    (clk_i),
      .rstn_i   (rstn_i),
      .oku_en_i (rx_oku_en),
      .yaz_en_i (rx_veri_gecerli),
      .data_i   (rx_veri_r),        // *
      .data_o   (rx_veri_o),
      .fifo_bos (rx_fifo_bos),
      .fifo_dolu(rx_fifo_dolu)
   );

   always @(posedge clk_i) begin
      if (!rstn_i) begin
         DURUM           <= RX_IDLE;
         rx_veri_r       <= 8'd0;
         rx_bitindex_r   <= 4'd0;
         rx_baudsayac_r  <= 16'd0;
         rx_veri_gecerli <= 1'b0;
      end
      else begin
         case (DURUM)
            RX_IDLE: begin
               //Bosta beklerken yazmaclar temizlenir.
               rx_veri_r       <= 8'd0;
               rx_bitindex_r   <= 4'd0;
               rx_baudsayac_r  <= 16'd0;
               rx_veri_gecerli <= 1'b0;

               if (!rx_veri_i & rx_en_i & !rx_fifo_dolu) begin  // Basla
                  DURUM <= RX_START;
               end
            end

            RX_START: begin
               if (rx_baudsayac_r == (baud_clk_i) / 2 - 1) begin
                  rx_baudsayac_r <= 16'd0;
                  if (rx_fifo_dolu
                     ) begin  // Olasi fifo dolu sinyal gecikmesinde islemi durdur - Kontrol et!
                     DURUM <= RX_IDLE;
                  end
                  else begin
                     DURUM <= RX_DATA;
                  end

               end
               else begin
                  rx_baudsayac_r <= rx_baudsayac_r + 1;
               end
            end

            RX_DATA: begin
               if (rx_bitindex_r < 8) begin
                  if (rx_baudsayac_r == baud_clk_i - 1) begin
                     rx_veri_r[rx_bitindex_r] <= rx_veri_i;
                     rx_bitindex_r <= rx_bitindex_r + 1;
                     rx_baudsayac_r <= 0;
                  end
                  else begin
                     rx_baudsayac_r <= rx_baudsayac_r + 1;
                  end
               end
               else begin
                  rx_veri_gecerli <= 1'b1;  // Fifoya veriyi yaz.
                  DURUM <= RX_STOP;
               end
            end

            RX_STOP: begin
               rx_veri_gecerli <= 1'b0;
               if (rx_baudsayac_r == (baud_clk_i) - 1) begin
                  DURUM <= RX_IDLE;
               end
               else begin
                  rx_baudsayac_r <= rx_baudsayac_r + 1;
               end
            end
         endcase
      end
   end

endmodule
