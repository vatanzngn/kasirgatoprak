`timescale 1ns / 1ps

module t_fifo #(
   parameter width = 8,
`ifdef YUKSEK_BOYUT_UART_FIFO
   parameter depth = 4096
`else
   parameter depth = 32
`endif
) (
   input  wire             clk_i,
   input  wire             rstn_i,
   input  wire             oku_en_i,
   input  wire             yaz_en_i,
   output wire             fifo_bos,
   output wire             fifo_dolu,
   input  wire [width-1:0] data_i,
   output wire [width-1:0] data_o
);

   reg [width-1:0] fifo_reg[0:depth-1];
   reg [width-1:0] fifo_ns [0:depth-1];

   reg fifo_dolu_r, fifo_dolu_ns;
   reg [$clog2(depth)-1:0] oku_ptr_r, oku_ptr_ns;
   reg [$clog2(depth)-1:0] yaz_ptr_r, yaz_ptr_ns;

   assign fifo_dolu = fifo_dolu_r;
   assign fifo_bos = (oku_ptr_r == yaz_ptr_r) && !fifo_dolu_r;

   assign data_o = fifo_reg[oku_ptr_r];  // veri cikis portu

   integer x;
   integer y;

   always @(posedge clk_i) begin
      if (!rstn_i) begin  // resette her sey initial.
         oku_ptr_r   <= 0;
         yaz_ptr_r   <= 0;
         fifo_dolu_r <= 0;
      end
      else begin  // next state durumu current state yazmaclarina dolduruluyor.
         for (x = 0; x < depth; x = x + 1) begin
            fifo_reg[x] <= fifo_ns[x];
         end
         oku_ptr_r   <= oku_ptr_ns;
         yaz_ptr_r   <= yaz_ptr_ns;
         fifo_dolu_r <= fifo_dolu_ns;
      end
   end

   always @* begin
      for (y = 0; y < depth; y = y + 1) begin
         fifo_ns[y] = fifo_reg[y];
      end
      oku_ptr_ns   = oku_ptr_r;
      yaz_ptr_ns   = yaz_ptr_r;
      fifo_dolu_ns = fifo_dolu_r;

      if (oku_en_i && !fifo_bos) begin  // next state okuma pointerine arttirma yapiliyor.
         oku_ptr_ns   = (oku_ptr_r + 1) % depth;
         fifo_dolu_ns = 1'b0;
      end

      if (yaz_en_i && !fifo_dolu) begin  // next state asamalarina yaziliyor.
         fifo_ns[yaz_ptr_r] = data_i;
         yaz_ptr_ns = (yaz_ptr_r + 1) % depth;
         fifo_dolu_ns = !oku_en_i && ((yaz_ptr_r + 1) % depth) == oku_ptr_r;
      end
   end

endmodule
