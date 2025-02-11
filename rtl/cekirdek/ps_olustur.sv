`timescale 1ns / 1ps

`include "yapilandirma.vh"

module ps_olustur #(
   parameter ADRES_GENISLIGI  = `ADRES_GENISLIGI_BIT,
   parameter BASLANGIC_ADRESI = `BASLANGIC_ADRESI
) (
   input wire clk_i,
   input wire rstn_i,
   input wire [ADRES_GENISLIGI-1:0] dogrudan_dallanma_adresi_i,
   input wire dogrudan_dallanmayi_kullan_i,
   input wire getir_sonraki_buyruk_getir_i,

   input wire ongoruyu_kullan_i,
   input wire [ADRES_GENISLIGI-1:0] ongorulen_dallanma_adresi_i,

   //csr gelen veri
   input wire [ADRES_GENISLIGI-1:0] exc_atla_adres_i,
   input wire exc_atla_i,

   output wire [ADRES_GENISLIGI-1:0] ps_getir_o,
   output wire [ADRES_GENISLIGI-1:0] l1b_denetleyici_adresi_o
);

   reg [ADRES_GENISLIGI-1:0] ps_getir_r, ps_getir_ns;

   always @(posedge clk_i) begin
      if (ongorulen_dallanma_adresi_i == 32'h80000510) begin
         $display("DUR");
      end
   end

   always @(posedge clk_i) begin
      if (!rstn_i) begin
         ps_getir_r <= BASLANGIC_ADRESI;
      end
      else begin
         ps_getir_r <= ps_getir_ns;
      end
   end

   always_comb begin
      ps_getir_ns = ps_getir_r;

      if (exc_atla_i) begin
         ps_getir_ns = exc_atla_adres_i;
      end
      else if (dogrudan_dallanmayi_kullan_i) begin
         ps_getir_ns = dogrudan_dallanma_adresi_i;
      end
      else if (ongoruyu_kullan_i) begin
         ps_getir_ns = getir_sonraki_buyruk_getir_i ? ongorulen_dallanma_adresi_i : ps_getir_r;
      end
      else begin
         ps_getir_ns = getir_sonraki_buyruk_getir_i ? ps_getir_r + 4 : ps_getir_r;
      end
   end

   assign ps_getir_o = ps_getir_r;
   assign l1b_denetleyici_adresi_o = ps_getir_r;

endmodule
