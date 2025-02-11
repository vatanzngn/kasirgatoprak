`timescale 1ns / 1ps
`include "yapilandirma.vh"
module tehlikeli_durum_birimi (
   input wire yu_rd_yaz_i,  // yurut
   input wire yu_rd_hazir_i,  // yurut
   input wire gy_rd_yaz_i,
   input wire dallanma_gerceklesti_i,
   input wire [4:0] yurut_hedef_adres_i,
   input wire yu_rd_hedef_fp_i,
   input wire [4:0] gy_rd_adres_i,
   input wire gy_rd_hedef_fp_i,
   input wire [4:0] rs1_adres_i,  // çöz yazmaç oku girdisi
   input wire rs1_fp_oku,
   input wire [4:0] rs2_adres_i,  // çöz yazmaç oku girdisi
   input wire rs2_fp_oku,
   input wire [4:0] rs3_adres_i,  // çöz yazmaç oku girdisi
   output logic [1:0] yonlendirme_kullan_rs1_o,  // coz // 00 kullanma
   output logic [1:0] yonlendirme_kullan_rs2_o,  // coz  // 01 yurut
   output logic [1:0] yonlendirme_kullan_rs3_o,  // coz  // 01 yurut
   // 10 geri_yaz
   output wire getir_atla_o
);

   always_comb begin
      yonlendirme_kullan_rs1_o = 2'b00;

      if (rs1_fp_oku) begin
         if (yu_rd_hedef_fp_i && yu_rd_yaz_i && yurut_hedef_adres_i == rs1_adres_i) begin
            yonlendirme_kullan_rs1_o = 2'b01;
         end
         else if (gy_rd_hedef_fp_i && gy_rd_yaz_i && gy_rd_adres_i == rs1_adres_i) begin
            yonlendirme_kullan_rs1_o = 2'b10;
         end
         else begin
            yonlendirme_kullan_rs1_o = 2'b00;
         end
      end
      else begin
         if (!yu_rd_hedef_fp_i && yu_rd_yaz_i && yu_rd_hazir_i &&
             yurut_hedef_adres_i == rs1_adres_i && rs1_adres_i != 5'b0) begin
            yonlendirme_kullan_rs1_o = 2'b01;
         end
         else if (!gy_rd_hedef_fp_i && gy_rd_yaz_i && gy_rd_adres_i == rs1_adres_i &&
                  rs1_adres_i != 5'b0) begin
            yonlendirme_kullan_rs1_o = 2'b10;
         end
         else begin
            yonlendirme_kullan_rs1_o = 2'b00;
         end
      end
   end

   always_comb begin
      yonlendirme_kullan_rs2_o = 2'b00;

      if (rs2_fp_oku) begin
         if (yu_rd_hedef_fp_i && yu_rd_yaz_i && yurut_hedef_adres_i == rs2_adres_i) begin
            yonlendirme_kullan_rs2_o = 2'b01;
         end
         else if (gy_rd_hedef_fp_i && gy_rd_yaz_i && gy_rd_adres_i == rs2_adres_i) begin
            yonlendirme_kullan_rs2_o = 2'b10;
         end
         else begin
            yonlendirme_kullan_rs2_o = 2'b00;
         end
      end
      else begin
         if (!yu_rd_hedef_fp_i && yu_rd_yaz_i && yu_rd_hazir_i &&
             yurut_hedef_adres_i == rs2_adres_i && rs2_adres_i != 5'b0) begin
            yonlendirme_kullan_rs2_o = 2'b01;
         end
         else if (!gy_rd_hedef_fp_i && gy_rd_yaz_i && gy_rd_adres_i == rs2_adres_i &&
                  rs2_adres_i != 5'b0) begin
            yonlendirme_kullan_rs2_o = 2'b10;
         end
         else begin
            yonlendirme_kullan_rs2_o = 2'b00;
         end
      end
   end

   always_comb begin
      yonlendirme_kullan_rs3_o = 2'b00;

      if (yu_rd_hedef_fp_i && yu_rd_yaz_i && yurut_hedef_adres_i == rs3_adres_i) begin
         yonlendirme_kullan_rs3_o = 2'b01;
      end
      else if (gy_rd_hedef_fp_i && gy_rd_yaz_i && gy_rd_adres_i == rs3_adres_i) begin
         yonlendirme_kullan_rs3_o = 2'b10;
      end
      else begin
         yonlendirme_kullan_rs3_o = 2'b00;
      end
   end

   assign getir_atla_o = dallanma_gerceklesti_i;

endmodule
