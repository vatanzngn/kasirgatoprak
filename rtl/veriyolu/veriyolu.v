`timescale 1ns / 1ps

`include "yapilandirma.vh"
`include "sabitler.vh"

/*L1B isteğinin tamamlanması ardından l1v'ye istek tanındığı anda l1b verisi l1v'de kalmakta çözülmeli
*/
module veriyolu_denetleyici #(
   parameter ADRES_GENISLIGI = `ADRES_GENISLIGI_BIT,
   parameter SOZCUK_GENISLIGI = `SOZCUK_GENISLIGI_BIT,
   parameter SATIR_SOZCUK_SAYISI = `ONBELLEK_SATIR_SOZCUK_SAYISI,
   localparam SATIR_GENISLIGI = SATIR_SOZCUK_SAYISI * SOZCUK_GENISLIGI

) (
   input wire clk_i,
   input wire rstn_i,
   // l1b denetleyici <-> veriyolu // gelen tüm istekler 0x8000_0000 adresinden başlayıp +:`RAM_GENISLIGI(byte) a kadar olmalı
   input wire [ADRES_GENISLIGI-1:0] l1b_adres_i,
   input wire l1b_istek_gecerli_i,

   output wire [SATIR_GENISLIGI-1:0] l1b_veri_o,
   output wire l1b_veri_hazir_o,
   // l1v <-> veriyolu // gelen tüm istekler 0x8000_0000 adresinden başlayıp +:`RAM_GENISLIGI(byte)' a kadar olmalı
   input wire [ADRES_GENISLIGI-1:0] l1v_adres_i,
   input wire [SATIR_GENISLIGI-1:0] l1v_veri_i,
   input wire l1v_istek_gecerli_i,
   input wire l1v_yaz_i,

   output wire [SATIR_GENISLIGI-1:0] l1v_veri_o,
   output wire l1v_veri_hazir_o,

   // ana bellek erişimi
   output wire [ADRES_GENISLIGI-1:0] ram_adres_o,
   output wire ram_istek_gecerli_o,
   output wire [SATIR_GENISLIGI-1:0] ram_yazilacak_veri_o,
   output wire ram_yaz_o,

   input wire [SATIR_GENISLIGI-1:0] ram_okunan_veri_i,
   input wire ram_hazir_i,
   input wire ram_grant_i,

   // WBM cevirici
   output wire [ADRES_GENISLIGI-1:0] wb_adr_o,
   input wire [SOZCUK_GENISLIGI-1:0] wb_veri_i,
   output wire [SOZCUK_GENISLIGI-1:0] wb_veri_o,
   output wire wb_yaz_o,
   output wire wb_istek_o,
   input wire wb_hazir_i
);
   localparam RAM_ERISEN_MODUL_SAYISI = 2;


   wire l1v_anabellek = l1v_adres_i >= `BASLANGIC_ADRESI;
   wire l1v_anabellege_istek = l1v_anabellek && l1v_istek_gecerli_i;

   wire [RAM_ERISEN_MODUL_SAYISI-1:0] ram_istekleri = {l1v_anabellege_istek, l1b_istek_gecerli_i};

   wire ram_hazir = (l1b_istek_gecerli_i | l1v_anabellege_istek) ?
      (ram_yaz_o) ? ram_grant_i  // yazmayı yaptigini garanti edecek wvalid biti yok. 
   : ram_hazir_i && ram_grant_i  // okumalarda rvalid & gnt okunduğunu garanti et
   : 1;  // istege hazir cunku istek yok

   assign wb_adr_o   = l1v_anabellek ? 32'b0 : l1v_adres_i;
   assign wb_veri_o  = l1v_anabellek ? 32'b0 : l1v_veri_i;
   assign wb_yaz_o   = l1v_anabellek ? 1'b0 : l1v_yaz_i;
   assign wb_istek_o = l1v_anabellek ? 1'b0 : l1v_istek_gecerli_i;

   reg [$clog2(RAM_ERISEN_MODUL_SAYISI)-1:0] oncelik_verilen_cmb;

   reg [$clog2(RAM_ERISEN_MODUL_SAYISI)-1:0] oncelik_kitlenmis_r;
   reg oncelik_kitle;

   integer i;
   always @(*) begin
      oncelik_verilen_cmb = 0;
      for (i = RAM_ERISEN_MODUL_SAYISI - 1; i >= 0; i = i - 1) begin
         if (ram_istekleri[i]) begin
            oncelik_verilen_cmb = i;
         end
      end
   end

   always @(posedge clk_i) begin
      if (!rstn_i) begin
         oncelik_kitle <= 0;
         oncelik_kitlenmis_r <= 0;
      end
      else begin
         if (oncelik_kitle) begin
            if (ram_hazir_i) begin
               oncelik_kitle <= 0;
               oncelik_kitlenmis_r <= 0;
            end
            else if (!(|ram_istekleri)) begin
               oncelik_kitle <= 0;
               oncelik_kitlenmis_r <= 0;
            end
         end
         else if (|ram_istekleri) begin
            oncelik_kitle <= 1;
            oncelik_kitlenmis_r <= oncelik_verilen_cmb;
         end
`ifdef SIM
         if (l1v_istek_gecerli_i && l1v_yaz_i && l1v_adres_i == 32'h2000000c) begin
            $write("UART_WDATA adresine yazma: ");
            for (i = 0; 32 > i; i = i + 8) begin
               $write("%c , %h", l1v_veri_i[i+:8], l1v_veri_i[i+:8]);
            end
            $display();
         end
`endif
      end
   end

   wire [$clog2(
RAM_ERISEN_MODUL_SAYISI
)-1:0] gercek_izin = (oncelik_kitle) ? oncelik_kitlenmis_r : oncelik_verilen_cmb;

   wire hazir = (gercek_izin == oncelik_kitlenmis_r) && oncelik_kitle;
   assign l1b_veri_hazir_o = (hazir && gercek_izin == 0) ? ram_hazir : 0;
   assign l1b_veri_o = ram_okunan_veri_i;

   assign l1v_veri_hazir_o = (hazir && gercek_izin == 1) ? ram_hazir : !l1v_anabellek && wb_hazir_i;
   assign l1v_veri_o = (l1v_anabellege_istek) ? ram_okunan_veri_i : !l1v_anabellek ? wb_veri_i : 0;

   assign ram_adres_o = (gercek_izin == 0) ? l1b_adres_i : l1v_adres_i;
   assign ram_istek_gecerli_o = (gercek_izin == 0) ? l1b_istek_gecerli_i : l1v_anabellege_istek;
   assign ram_yazilacak_veri_o = (gercek_izin == 0) ? 32'h0 : l1v_veri_i;
   assign ram_yaz_o = (gercek_izin == 0) ? 1'b0 : l1v_yaz_i;
endmodule
