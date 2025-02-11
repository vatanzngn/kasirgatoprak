// Kasırga Toprak UART Kontrolcüsü

// UYARI : Bu modülde bir kesme yapisi bulunmamaktadir.

`timescale 1ns / 1ps

`include "sabitler.vh"
`include "yapilandirma.vh"

module uart_kontrolcusu #(
   parameter ADRES_GENISLIGI  = `ADRES_GENISLIGI_BIT,
   parameter SOZCUK_GENISLIGI = `SOZCUK_GENISLIGI_BIT,

   parameter CEVRE_BIRIM_BASLA_ADRES = `CEVRE_BIRIM_BASLANGIC,
   parameter CEVRE_BIRIM_BITIS_ADRES = `CEVRE_BIRIM_BITIS,
   localparam CEVRE_BIRIM_ADRES_GENISLIGI = CEVRE_BIRIM_BITIS_ADRES - CEVRE_BIRIM_BASLA_ADRES,
   localparam CEVRE_BIRIM_IC_ADRES_GENISLIGI = $clog2(CEVRE_BIRIM_ADRES_GENISLIGI)
) (

   input wire clk_i,
   input wire rstn_i,

   //  Yonga Disi
   input  wire uart_rx_i,
   output wire uart_tx_o,

   //  WISHBONE
   input  wire                                      WB_WE_I,
   input  wire                                      WB_STB_I,
   input  wire                                      WB_CYC_I,
   input  wire [CEVRE_BIRIM_IC_ADRES_GENISLIGI-1:0] WB_ADR_I,
   input  wire [              SOZCUK_GENISLIGI-1:0] WB_DAT_I,
   output reg  [              SOZCUK_GENISLIGI-1:0] WB_DAT_O,
   output reg                                       WB_ACK_O
);

   localparam uart_ctrl_addr = 7'h00;
   localparam uart_stats_addr = 7'h04;
   localparam uart_rdata_addr = 7'h08;
   localparam uart_wdata_addr = 7'h0C;

   reg  [15:0] baudrate;
   wire [ 7:0] rx_veri_o;
   wire rx_bos, rx_dolu, tx_bos, tx_dolu;
   reg rx_en, tx_en, tx_yaz_en, rx_oku_en;

   uart_alici uart_rx (
      .clk_i       (clk_i),
      .rstn_i      (rstn_i),
      .baud_clk_i  (baudrate),
      .rx_en_i     (rx_en),
      .rx_oku_en   (rx_oku_en),
      .rx_veri_i   (uart_rx_i),
      .rx_veri_o   (rx_veri_o),
      .rx_fifo_bos (rx_bos),
      .rx_fifo_dolu(rx_dolu)
   );

   uart_verici uart_tx (
      .clk_i       (clk_i),
      .rstn_i      (rstn_i),
      .baud_clk_i  (baudrate),
      .tx_en_i     (tx_en),
      .tx_yaz_en   (tx_yaz_en),
      .tx_veri_i   (WB_DAT_I[7:0]),
      .tx_veri_o   (uart_tx_o),
      .tx_fifo_bos (tx_bos),
      .tx_fifo_dolu(tx_dolu)
   );

   //WISHBONE SLAVE <--> UART REG
   always @(posedge clk_i) begin
      if (!rstn_i) begin
         WB_DAT_O  <= 0;  // Gereksiz olmalı.
         WB_ACK_O  <= 0;
         baudrate  <= 0;  // NOT! BURAYA 115200 Girilecek.
         rx_en     <= 0;
         tx_en     <= 0;
         rx_oku_en <= 0;
         tx_yaz_en <= 0;
      end
      else begin
         rx_oku_en <= 0;
         tx_yaz_en <= 0;
         WB_ACK_O  <= 0;
         if (WB_CYC_I) begin
            case (WB_ADR_I)
               uart_ctrl_addr: begin
                  WB_ACK_O <= !WB_ACK_O & WB_STB_I;
                  if (WB_WE_I & !WB_ACK_O &
                      WB_STB_I) begin  // UYARI : BU AŞAMADA SPESIFIK BIT MASKESI BULUNMAMAKTA.
                     tx_en    <= WB_DAT_I[0];
                     rx_en    <= WB_DAT_I[1];
                     baudrate <= WB_DAT_I[31:16];
`ifdef SIM
                     $display("tx_en: %b, rx_en: %b, baud_div: %d (taban 10), yazildi.",
                              WB_DAT_I[0], WB_DAT_I[1], WB_DAT_I[31:16]);
                     $display("komple veri: %h", WB_DAT_I);
`endif
                  end
                  else begin
                     WB_DAT_O <= {baudrate, 14'd0, rx_en, tx_en};
                     $display("tx_en: %b, rx_en: %b, baud_div: %d (taban 10), okundu.", tx_en,
                              rx_en, baudrate);
                     $display("donen veri: %h", {baudrate, 14'd0, rx_en, tx_en});
                  end
               end

               uart_stats_addr: begin
                  WB_ACK_O <= !WB_ACK_O & WB_STB_I;
                  $display("uart status okundu rx_bos:%b, rx_dolu:%b, tx_bos:%b, tx_dolu:%b",
                           rx_bos, rx_dolu, tx_bos, tx_dolu);
                  WB_DAT_O <= {28'd0, rx_bos, rx_dolu, tx_bos, tx_dolu};
               end

               uart_rdata_addr: begin
                  WB_ACK_O <= !WB_ACK_O & WB_STB_I;
                  if (!rx_bos & WB_STB_I & !WB_ACK_O & !WB_WE_I) begin
                     rx_oku_en <= 1'b1;
                     WB_DAT_O  <= {24'b0, rx_veri_o};
                  end
               end

               uart_wdata_addr: begin
                  WB_ACK_O <= !WB_ACK_O & WB_STB_I;
                  if (!tx_dolu & WB_STB_I & !WB_ACK_O & WB_WE_I) begin
                     tx_yaz_en <= 1'b1;
                  end
               end
            endcase
         end
      end
   end

endmodule
