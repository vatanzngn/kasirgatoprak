import sabitler_pkg::*;
import oncoz_pkg::*;
module gshare #(
   parameter int BHT_SATIR_SAYISI = 128,
   localparam int BHT_ERISIM_GENISLIGI = $clog2(BHT_SATIR_SAYISI),
   localparam
      int BHT_ETIKET_GENISLIGI = ADRES_GENISLIGI - BHT_ERISIM_GENISLIGI - 2,  // word aligned
   parameter int BTB_SATIR_SAYISI = 64,
   localparam int BTB_ERISIM_GENISLIGI = $clog2(BTB_SATIR_SAYISI),
   localparam
      int BTB_ETIKET_GENISLIGI = ADRES_GENISLIGI - BTB_ERISIM_GENISLIGI - 2,  // word aligned
   parameter int N_BITLIK_DOYGUNLUK = 2,
   parameter GSHARE_AKTIF = 1
) (
   input clk_i,
   input rstn_i,

   input [31:0] ps_i,

   input oncoz_pkg::dallanma_turu_t dallanma_turu_i,

   output [31:0] ps_o,
   output dallanma_ongoruldu_o,

   input coz_gs_guncelle_i,
   input [31:0] coz_dallanma_olan_ps_i,
   input [31:0] coz_dallanilan_ps_i,
   input coz_dallanma_oldu_i
);

   typedef struct packed {
      logic [BHT_ETIKET_GENISLIGI-1:0] etiket;
      logic [N_BITLIK_DOYGUNLUK-1:0]   sayac;
   } bht_satiri_t;

   typedef struct packed {
      logic [BTB_ETIKET_GENISLIGI-1:0] etiket;
      logic [31:0] hedef_ps;
   } btb_satiri_t;

   // GHR
   logic [BHT_ERISIM_GENISLIGI-1:0] ghr;

   always_ff @(posedge clk_i) begin
      if (!rstn_i) begin
         ghr <= 0;
      end
      else begin
         if (coz_gs_guncelle_i) begin
            ghr <= {ghr[BHT_ERISIM_GENISLIGI-2:0], coz_dallanma_oldu_i};
         end
      end
   end

   wire [BHT_ERISIM_GENISLIGI-1:0] bht_erisim_satir = ghr ^ ps_i[2+:BHT_ERISIM_GENISLIGI];
   wire [BTB_ERISIM_GENISLIGI-1:0] btb_erisim_satir = ps_i[2+:BTB_ERISIM_GENISLIGI];

   wire [BHT_ERISIM_GENISLIGI-1:0]
      coz_bht_erisim_satir = ghr ^ coz_dallanma_olan_ps_i[2+:BHT_ERISIM_GENISLIGI];
   wire [BTB_ERISIM_GENISLIGI-1:0]
      coz_btb_erisim_satir = coz_dallanma_olan_ps_i[2+:BTB_ERISIM_GENISLIGI];

   wire btb_satiri_etiket_uyusuyor = btb[btb_erisim_satir].etiket ==
      ps_i[2+BTB_ERISIM_GENISLIGI+:BTB_ETIKET_GENISLIGI];
   wire bht_satiri_etiket_uyusuyor = bht[bht_erisim_satir].etiket ==
      ps_i[2+BHT_ERISIM_GENISLIGI+:BHT_ETIKET_GENISLIGI];

   assign ps_o = btb[btb_erisim_satir].hedef_ps;
   assign dallanma_ongoruldu_o = GSHARE_AKTIF ?
      ((bht[bht_erisim_satir].sayac >= (2 ** N_BITLIK_DOYGUNLUK) / 2) &&
       (dallanma_turu_i == oncoz_pkg::DALLANMA || dallanma_turu_i == oncoz_pkg::JAL) &&
       btb_satiri_etiket_uyusuyor && bht_satiri_etiket_uyusuyor) : 0;


   bht_satiri_t bht[BHT_SATIR_SAYISI];
   btb_satiri_t btb[BTB_SATIR_SAYISI];

   always_ff @(posedge clk_i) begin
      if (~rstn_i) begin
         for (int i = 0; i < BHT_SATIR_SAYISI; i = i + 1) begin
            bht[i].etiket <= 0;
            bht[i].sayac  <= N_BITLIK_DOYGUNLUK;
         end
         for (int i = 0; i < BTB_SATIR_SAYISI; i = i + 1) begin
            btb[i].etiket   <= 0;
            btb[i].hedef_ps <= 0;
         end
      end
      else begin
         if (coz_gs_guncelle_i) begin
            if (coz_dallanma_oldu_i) begin
               btb[coz_btb_erisim_satir] <= {
                  coz_dallanma_olan_ps_i[2+BTB_ERISIM_GENISLIGI+:BTB_ETIKET_GENISLIGI],
                  coz_dallanilan_ps_i
               };
            end
            else begin
               btb[coz_btb_erisim_satir].etiket <=
                  coz_dallanma_olan_ps_i[2+BTB_ERISIM_GENISLIGI+:BTB_ETIKET_GENISLIGI];
               btb[coz_btb_erisim_satir].hedef_ps <= coz_dallanilan_ps_i;
            end
            if (bht_satiri_etiket_uyusuyor)
               if (coz_dallanma_oldu_i) begin
                  bht[coz_bht_erisim_satir].sayac <= sayac_arttir(bht[coz_bht_erisim_satir].sayac);
               end
               else begin
                  bht[coz_bht_erisim_satir].sayac <= sayac_azalt(bht[coz_bht_erisim_satir].sayac);
               end
            else begin
               bht[coz_bht_erisim_satir].etiket <=
                  ps_i[2+BHT_ERISIM_GENISLIGI+:BHT_ETIKET_GENISLIGI];
               bht[coz_bht_erisim_satir].sayac <= N_BITLIK_DOYGUNLUK;
            end
         end
      end
   end

   function int sayac_arttir(input int sayac);
      if (sayac == (2 ** N_BITLIK_DOYGUNLUK) - 1) begin
         sayac_arttir = sayac;
      end
      else begin
         sayac_arttir = sayac + 1;
      end
   endfunction

   function int sayac_azalt(input int sayac);
      if (sayac == 0) begin
         sayac_azalt = sayac;
      end
      else begin
         sayac_azalt = sayac - 1;
      end
   endfunction

endmodule
