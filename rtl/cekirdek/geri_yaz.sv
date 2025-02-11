`timescale 1ns / 1ps
localparam int ADRES_GENISLIGI_BIT = 32;

module geri_yaz (
   input wire [4:0] rd_adres_i,
   input wire [31:0] yurut_sonuc_i,
   input wire yaz_i,
   input wire fp_yaz_i,
   output wire [31:0] yazmac_yaz_veri_o,
   output wire [4:0] yazmac_adres_o,
   output wire yaz_o,
   output wire os_yaz_o,

   // yurutten csr sinyallerini al
   input wire [3:0] mcause_ic_i,
   input wire [ADRES_GENISLIGI_BIT-1:0] mepc_i,
   input wire [ADRES_GENISLIGI_BIT-1:0] mtval_i,
   input wire exc_i,

   output wire [3:0] mcause_ic_o,
   output wire [ADRES_GENISLIGI_BIT-1:0] mepc_o,
   output wire [ADRES_GENISLIGI_BIT-1:0] mtval_o,
   output wire exc_o,

   input wire [11:0] csr_adres_i,
   input wire [31:0] csr_veri_i,
   input wire csr_yaz_i,

   output wire [11:0] csr_adres_o,
   output wire [31:0] csr_veri_o,
   output wire csr_yaz_o,
   // csr yazma sinyallerini dondur
   //input wire bh_duraklat_i,
   output reg instret_o,  // aslında comb wire
   input wire yurut_gecerli_i,
   input wire bh_bosalt_i
);

`ifdef SIM
   always @(mepc_i) begin
      if (mepc_i == 32'h800001a0) begin
         $display("dur gy");
      end
   end
`endif

   assign yazmac_yaz_veri_o = yurut_sonuc_i;
   assign yazmac_adres_o = rd_adres_i;
   wire tam_sayi_yaz_o = !yurut_gecerli_i || bh_bosalt_i ? 0 : !fp_yaz_i && yaz_i;
   assign os_yaz_o = !yurut_gecerli_i || bh_bosalt_i ? 0 : fp_yaz_i && yaz_i;
   assign yaz_o = tam_sayi_yaz_o || os_yaz_o;

   always_comb begin
      instret_o = (exc_i || !yurut_gecerli_i || bh_bosalt_i) ? 0 : 1;
   end

   logic csr_adres_gecersiz;

   always_comb begin
      case (csr_adres_i)
         `CSR_ADDR_FCSR: csr_adres_gecersiz = 0;
         `CSR_ADDR_FRM: csr_adres_gecersiz = 0;
         `CSR_ADDR_FFLAGS: csr_adres_gecersiz = 0;

         `CSR_ADDR_MISA: csr_adres_gecersiz = 0;
         `CSR_ADDR_MSTATUS: csr_adres_gecersiz = 0;
         `CSR_ADDR_MSTATUSH: csr_adres_gecersiz = 0;
         `CSR_ADDR_MTVEC: csr_adres_gecersiz = 0;
         `CSR_ADDR_MIE: csr_adres_gecersiz = 0;

         `CSR_ADDR_MCYCLE: csr_adres_gecersiz = 0;
         `CSR_ADDR_MCYCLEH: csr_adres_gecersiz = 0;
         `CSR_ADDR_MINSTRET: csr_adres_gecersiz = 0;
         `CSR_ADDR_MINSTRETH: csr_adres_gecersiz = 0;
         `CSR_ADDR_MCOUNTINHIBIT: csr_adres_gecersiz = 0;
         `CSR_ADDR_MSCRATCH: csr_adres_gecersiz = 0;
         `CSR_ADDR_MEPC: csr_adres_gecersiz = 0;
         `CSR_ADDR_MCAUSE: csr_adres_gecersiz = 0;
         `CSR_ADDR_MTVAL: csr_adres_gecersiz = 0;
         default: csr_adres_gecersiz = 1;
      endcase
   end

   assign mcause_ic_o = mcause_ic_i;
   assign mepc_o = mepc_i;
   assign mtval_o = mtval_i;
   assign exc_o = !yurut_gecerli_i || bh_bosalt_i ? 0 : exc_i;
   assign csr_adres_o = csr_adres_i;
   assign csr_veri_o = csr_veri_i;
   assign csr_yaz_o = !yurut_gecerli_i || bh_bosalt_i ? 0 : (csr_yaz_i && csr_adres_i != 0);


   //assign boru_hatti_bellek_duraklat = getir_hazir_r;

endmodule
