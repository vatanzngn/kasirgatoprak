`timescale 1ns / 1ps


import coz_pkg::*;
import sabitler_pkg::*;
import csr_pkg::*;
module cekirdek #(
   localparam int OnbellekBoruhattiVeriGenisligi = SOZCUK_GENISLIGI
) (
   input wire clk_i,
   input wire rstn_i,

   // L1B interface
   output wire [ADRES_GENISLIGI-1:0] ps_l1b_adres,
   output wire ps_l1b_gecerli,
   input wire [OnbellekBoruhattiVeriGenisligi-1:0] l1b_ps_veri,
   input wire l1b_hazir,

   // L1V interface
   output wire [ADRES_GENISLIGI-1:0] bib_l1v_adres,
   output wire bib_l1v_gecerli,
   output wire bib_l1v_yaz,
   output wire [MASKE_GENISLIGI_BIT-1:0] bib_l1v_maske,
   output wire [OnbellekBoruhattiVeriGenisligi-1:0] bib_l1v_veri,
   input wire [OnbellekBoruhattiVeriGenisligi-1:0] l1v_bib_veri,
   input wire l1v_hazir
   //
);
   assign ps_l1b_gecerli = 1;

   //boruhattı
   wire getir_hazir;
   wire [SOZCUK_GENISLIGI-1:0] ps_getir_o;
   wire [SOZCUK_GENISLIGI-1:0] getir_coz_buyruk, getir_coz_ps;


   wire [ADRES_GENISLIGI-1:0] coz_ps_dallanma_adresi;
   wire coz_ps_dallanma_kullan;

   wire [SOZCUK_GENISLIGI-1:0] gy_coz_rd_veri;
   wire [4:0] gy_coz_rd;
   wire gy_coz_yaz;
   wire gy_coz_os_yaz;

   wire [4:0] yurut_gy_rd_adres;
   wire [SOZCUK_GENISLIGI-1:0] yurut_gy_rd;
   wire yurut_gy_yaz_o, yurut_hazir;


   wire [4:0] coz_tdb_rs1_adres;
   wire [4:0] coz_tdb_rs2_adres;
   wire [4:0] coz_tdb_rs3_adres;

   wire [1:0] tdb_coz_rs1_yonlendir;
   wire [1:0] tdb_coz_rs2_yonlendir;
   wire [1:0] tdb_coz_rs3_yonlendir;

   wire [SOZCUK_GENISLIGI-1:0] yonlendir_rd_coz;
   wire [4:0] yonlendir_rd_adres_tdb;
   wire yonlendir_rd_yaz_tdb;

   wire coz_ps_do_guncelle;

   wire getir_atla;

   wire bh_duraklat;

   wire [11:0] coz_csr_adres;

   wire gy_csr_buyruk_tamamlandi;
   wire [2:0] csr_fp_frm;
   wire [4:0] gy_csr_fflag = 0;  //FPU BAGLANDIGINDA ACILACAK
   wire gy_csr_fflag_yaz = 0;  //FPU BAGLANDIGINDA ACILACAK
   wire [SOZCUK_GENISLIGI-1:0] csr_coz_veri;
   wire [25:0] csr_coz_misa;

   //wire csr_bh_duraklat;
   wire csr_bh_bosalt;

   wire [ADRES_GENISLIGI-1:0] gy_csr_mepc, gy_csr_mtval;
   wire [3:0] gy_csr_mcause;
   wire gy_csr_exc;

`ifdef SIM
   always @(posedge rstn_i) $display("cekirdek basladi");
`endif
   // csr ps

   wire [ADRES_GENISLIGI-1:0] csr_ps_adresi;
   wire csr_ps_atla;

   wire [11:0] gy_csr_yaz_adres;
   wire [31:0] gy_csr_yaz_veri;
   wire gy_csr_yaz;

   csr_pkg::fs_t csr_coz_fs;

   csr c (
      .clk_i(clk_i),
      .rstn_i(rstn_i),
      .yaz_adres_i(gy_csr_yaz_adres),
      .adres_i(coz_csr_adres),
      .veri_i(gy_csr_yaz_veri),
      .yaz_i(gy_csr_yaz),
      .buyruk_tamamlandi_i(gy_csr_buyruk_tamamlandi),
      .frm_o(csr_fp_frm),
      .fs_o(csr_coz_fs),
      .fflag_i(gy_csr_fflag),
      .fflag_yaz_i(gy_csr_fflag_yaz),
      .csr_o(csr_coz_veri),
      .misa_ext_o(csr_coz_misa),
      .bh_bosalt_o(csr_bh_bosalt),
      .bh_ex_atla_o(csr_ps_atla),
      .bh_atla_pc_o(csr_ps_adresi),
      .gy_mcause_ic_i(gy_csr_mcause),
      .gy_mepc_i(gy_csr_mepc),
      .gy_mtval_i(gy_csr_mtval),
      .exc_yaz_i(gy_csr_exc),
      .yurut_stall_i(!yurut_hazir),
      .l1v_stall_i(!l1v_hazir),
      .l1b_stall_i(!l1b_hazir),
      .gs_stall_i(coz_ps_dallanma_kullan)
   );

   logic [31:0] gshare_ongoru_hedef;
   logic gshare_dallanma_ongoruldu;
   ps_olustur ps (
      .clk_i(clk_i),
      .rstn_i(rstn_i),
      .dogrudan_dallanma_adresi_i(coz_ps_dallanma_adresi),
      .dogrudan_dallanmayi_kullan_i(coz_ps_dallanma_kullan),
      .ongoruyu_kullan_i(gshare_dallanma_ongoruldu),
      .ongorulen_dallanma_adresi_i(gshare_ongoru_hedef),
      .getir_sonraki_buyruk_getir_i(getir_hazir),
      .exc_atla_adres_i(csr_ps_adresi),
      .exc_atla_i(csr_ps_atla),
      .ps_getir_o(ps_getir_o),
      .l1b_denetleyici_adresi_o(ps_l1b_adres)
   );

   wire [ADRES_GENISLIGI-1:0] getir_coz_mepc, getir_coz_mtval;
   wire [3:0] getir_coz_mcause_ic;
   wire getir_coz_exc;

   wire bh_bosalt = csr_bh_bosalt;
   getir ge (
      .clk_i(clk_i),
      .rstn_i(rstn_i),
      .l1b_veri_gecerli_i(l1b_hazir),
      .l1b_gelen_veri_i(l1b_ps_veri),
      .getir_hazir_o(getir_hazir),
      .getir_ps_i(ps_getir_o),
      .coz_buyruk_o(getir_coz_buyruk),
      .coz_ps_o(getir_coz_ps),

      .getir_mcause_ic_sebep_o(getir_coz_mcause_ic),
      .getir_mepc_o(getir_coz_mepc),
      .getir_mtval_o(getir_coz_mtval),
      .getir_exc_o(getir_coz_exc),

      .coz_gs_guncelle_i(coz_ps_do_guncelle),
      .coz_dallanma_olan_ps_i(getir_coz_ps),
      .coz_dallanilan_ps_i(coz_ps_dallanma_adresi),
      .dallanma_oldu_i(coz_ps_dallanma_kullan),

      .ongoru_hedef_o(gshare_ongoru_hedef),
      .dallanma_ongoruldu_o(gshare_dallanma_ongoruldu),

      .atla_i(getir_atla),
      .bh_bosalt(bh_bosalt),
      .bh_duraklat(bh_duraklat)
   );

   logic coz_tdb_rs1_fp, coz_tdb_rs2_fp;

   coz_sonucu_t coz_yurut_sonuc;

   coz_yazmacoku coz (
      .clk_i(clk_i),
      .rstn_i(rstn_i),
      .ps_i(getir_coz_ps),
      .buyruk_i(getir_coz_buyruk),

      .getir_coz_mcause_ic_i(getir_coz_mcause_ic),
      .getir_coz_mepc_i(getir_coz_mepc),
      .getir_coz_mtval_i(getir_coz_mtval),
      .getir_coz_exc_i(getir_coz_exc),

      .rd_veri_i(gy_coz_rd_veri),
      .rd_yaz_i(gy_coz_yaz),
      .rd_fp_yaz_i(gy_coz_os_yaz),
      .rd_i(gy_coz_rd),

      .yu_rd_veri_i(yonlendir_rd_coz),

      .csr_adres_o(coz_csr_adres),
      .csr_veri_i(csr_coz_veri),
      .csr_coz_misa_i(csr_coz_misa),
      .csr_fcsr_i(csr_fp_frm),
      .fs_i(csr_coz_fs),

      .ongorulen_adres_i(ps_getir_o),

      .bh_bosalt_i  (bh_bosalt),
      .bh_duraklat_i(bh_duraklat),

      .ps_sonraki_adres_o(coz_ps_dallanma_adresi),
      .ps_sicra_aktif_o  (coz_ps_dallanma_kullan),

      .coz_ps_dallanma_ongorucu_guncelle_o(coz_ps_do_guncelle),
      .rs1_a_o(coz_tdb_rs1_adres),
      .rs2_a_o(coz_tdb_rs2_adres),
      .rs3_a_o(coz_tdb_rs3_adres),
      .tdb_rs1_yonlendirme_i(tdb_coz_rs1_yonlendir),
      .tdb_rs2_yonlendirme_i(tdb_coz_rs2_yonlendir),
      .tdb_rs3_yonlendirme_i(tdb_coz_rs3_yonlendir),
      .rs1_fp_oku_o(coz_tdb_rs1_fp),
      .rs2_fp_oku_o(coz_tdb_rs2_fp),
      .sonuc_o(coz_yurut_sonuc)
   );

   wire [ADRES_GENISLIGI-1:0] yurut_gy_mepc, yurut_gy_mtval;
   wire [3:0] yurut_gy_mcause_ic;
   wire yurut_gy_exc;

   wire [11:0] yurut_gy_csr_adres;
   wire [31:0] yurut_gy_csr_veri;
   wire yurut_gy_csr_yaz;
   wire yurut_gy_gecerli;

   logic yu_hedef_fp;
   logic yurut_gy_fp_yaz;
   yurut yu (
      .clk_i(clk_i),
      .rstn_i(rstn_i),
      .coz_yurut_i(coz_yurut_sonuc),

      .rd_adres_o(yurut_gy_rd_adres),
      .yurut_sonuc_o(yurut_gy_rd),
      .yaz_geriyaz_o(yurut_gy_yaz_o),
      .yaz_geriyaz_fp_o(yurut_gy_fp_yaz),

      //tdb
      .yonlendir_rd_coz_o(yonlendir_rd_coz),
      .yonlendir_rd_adres_tdb_o(yonlendir_rd_adres_tdb),
      .yonlendir_rd_yaz_tdb_o(yonlendir_rd_yaz_tdb),
      .yazma_hedefi_fp_o(yu_hedef_fp),
      .hazir(yurut_hazir),
      .bh_duraklat_i(bh_duraklat),

      //gy'a csr sinyallerini yonlendir.
      .yurut_mcause_ic_o(yurut_gy_mcause_ic),
      .yurut_mepc_o(yurut_gy_mepc),
      .yurut_mtval_o(yurut_gy_mtval),
      .yurut_exc_o(yurut_gy_exc),

      .csr_adres_o(yurut_gy_csr_adres),
      .csr_veri_o (yurut_gy_csr_veri),
      .csr_yaz_o  (yurut_gy_csr_yaz),

      .l1v_hazir_i(l1v_hazir),
      .l1v_veri_i (l1v_bib_veri),
      .l1v_maske_o(bib_l1v_maske),
      .l1v_veri_o (bib_l1v_veri),
      .l1v_adres_o(bib_l1v_adres),
      .l1v_istek_o(bib_l1v_gecerli),
      .l1v_yaz_o  (bib_l1v_yaz),

      .bh_bosalt_i(bh_bosalt),
      .yurut_gy_gecerli_o(yurut_gy_gecerli)
   );

   geri_yaz gy (
      .rd_adres_i(yurut_gy_rd_adres),
      .yurut_sonuc_i(yurut_gy_rd),
      .yaz_i(yurut_gy_yaz_o),
      .fp_yaz_i(yurut_gy_fp_yaz),
      .yaz_o(gy_coz_yaz),
      .os_yaz_o(gy_coz_os_yaz),
      .yazmac_yaz_veri_o(gy_coz_rd_veri),
      .yazmac_adres_o(gy_coz_rd),
      .mcause_ic_i(yurut_gy_mcause_ic),
      .mepc_i(yurut_gy_mepc),
      .mtval_i(yurut_gy_mtval),
      .exc_i(yurut_gy_exc),

      .mcause_ic_o(gy_csr_mcause),
      .mepc_o(gy_csr_mepc),
      .mtval_o(gy_csr_mtval),
      .exc_o(gy_csr_exc),

      .csr_adres_i(yurut_gy_csr_adres),
      .csr_veri_i (yurut_gy_csr_veri),
      .csr_yaz_i  (yurut_gy_csr_yaz),

      .csr_adres_o(gy_csr_yaz_adres),
      .csr_veri_o (gy_csr_yaz_veri),
      .csr_yaz_o  (gy_csr_yaz),

      .instret_o(gy_csr_buyruk_tamamlandi),
      .yurut_gecerli_i(yurut_gy_gecerli),
      .bh_bosalt_i(bh_bosalt)
   );

   tehlikeli_durum_birimi tdb (
      .yu_rd_yaz_i(yonlendir_rd_yaz_tdb),
      .yu_rd_hazir_i(yurut_hazir),
      .gy_rd_yaz_i(gy_coz_yaz),
      .dallanma_gerceklesti_i(coz_ps_dallanma_kullan),
      .yurut_hedef_adres_i(yonlendir_rd_adres_tdb),
      .yu_rd_hedef_fp_i(yu_hedef_fp),
      .gy_rd_adres_i(gy_coz_rd),
      .gy_rd_hedef_fp_i(gy_coz_os_yaz),
      .rs1_adres_i(coz_tdb_rs1_adres),
      .rs1_fp_oku(coz_tdb_rs1_fp),
      .rs2_adres_i(coz_tdb_rs2_adres),
      .rs2_fp_oku(coz_tdb_rs2_fp),
      .rs3_adres_i(coz_tdb_rs3_adres),
      .yonlendirme_kullan_rs1_o(tdb_coz_rs1_yonlendir),
      .yonlendirme_kullan_rs2_o(tdb_coz_rs2_yonlendir),
      .yonlendirme_kullan_rs3_o(tdb_coz_rs3_yonlendir),
      .getir_atla_o(getir_atla)

   );

   assign bh_duraklat = !l1v_hazir || !yurut_hazir;

   //        ila_pc your_instance_name (
   //.clk(clk_i), // input wire clk


   //.probe0({gy_csr_mepc[31], gy_csr_mepc[14:0]}), // input wire [31:0] probe0
   //.probe1(gy_csr_buyruk_tamamlandi)
   //);
endmodule
