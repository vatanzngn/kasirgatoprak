`include "sentez_tanimlari.vh"
import riscv_instr::*;
import yurut_pkg::*;
import sabitler_pkg::*;
package coz_pkg;
    /*
        Sonuc tipinin IMM olması durumunda, yazma işlemi yapılmaz
     */
    typedef enum logic [1:0] {
        TS_yaz, OS_yaz, CSR_yaz, IMM_yaz
    } yazma_hedefi_t;

    typedef struct {
        logic [$clog2(32)-1:0] islenec_adresi;
        yazma_hedefi_t yazma_hedefi;
    } sonuc_hedefi_t;

    typedef enum logic [1:0] {
        TS, OS, CSR, IMM
    } islenec_tip_t;

    typedef struct {
        logic amb_aktif;
        yurut_pkg::amb_islem_t amb_islem;
    } amb_kontrol_t;

    typedef struct{
        logic abib_aktif;
        yurut_pkg::abib_islem_t abib_islem;
    } abib_kontrol_t;

    typedef struct {
        logic branch_aktif;
        yurut_pkg::dallanma_islem_t branch_islem;
    } dallanma_kontrol_t;

    typedef struct {
        logic muib_aktif;
        yurut_pkg::muib_islem_t muib_islem;
    } muib_kontrol_t;

    typedef struct {
        logic csr_aktif;
        yurut_pkg::csr_islem_t csr_islem;
    } csr_kontrol_t;

    typedef struct {
        logic os_aktif;
        yurut_pkg::os_islem_t os_islem;
        yurut_pkg::os_rm_t os_rm;
    } os_kontrol_t;

    typedef struct {
        logic [32-1:0] islenec;
        islenec_tip_t islenec_tip;
    } islenec_yapi_t;

    typedef struct {
        logic olagan_disi_durum;
        logic [3:0] mcause;
        logic [31:0] mepc;
        logic [31:0] mtval;
        `ifdef DEBUG
        logic [31:0] debug_buyruk;
        `endif
    } olagan_disi_t;

    olagan_disi_t BOS_OLAGAN_DISI = '{
        1'b0, 4'hf, 32'b0, 
        32'b0
        `ifdef DEBUG
        , 32'b0
        `endif
        };

    typedef struct {
        islenec_yapi_t islenec1_yapi;
        islenec_yapi_t islenec2_yapi;
        islenec_yapi_t islenec3_yapi;
        amb_kontrol_t amb_kontrol;
        abib_kontrol_t abib_kontrol;
        muib_kontrol_t muib_kontrol;
        csr_kontrol_t csr_kontrol;
        dallanma_kontrol_t dallanma_kontrol;
        os_kontrol_t os_kontrol;
        sonuc_hedefi_t sonuc1_hedef;
        sonuc_hedefi_t sonuc2_hedef;
        olagan_disi_t olagan_disi;
    } coz_sonucu_t;


    islenec_yapi_t BOS_ISLENEC = '{32'b0, IMM};
    sonuc_hedefi_t BOS_HEDEF = '{5'b0, IMM_yaz};
    localparam logic AKTIF = 1'b1;
    localparam logic KAPALI = 1'b0;
    
    os_kontrol_t OS_KAPALI = '{1'b0, yurut_pkg::OS_FLW, yurut_pkg::OS_RNE};
    csr_kontrol_t CSR_KAPALI = '{1'b0, yurut_pkg::CSR_RW};
    muib_kontrol_t MUIB_KAPALI = '{1'b0, yurut_pkg::MUIB_MUL};
    abib_kontrol_t ABIB_KAPALI = '{1'b0, yurut_pkg::ABIB_LB};
    amb_kontrol_t AMB_KAPALI = '{1'b0, yurut_pkg::AMB_AND};
    dallanma_kontrol_t BRANCH_KAPALI = '{1'b0, yurut_pkg::DB_BEQ};
    
    coz_sonucu_t BOS_COZ_SONUCU = '{
    BOS_ISLENEC, BOS_ISLENEC, BOS_ISLENEC, AMB_KAPALI,
    ABIB_KAPALI, MUIB_KAPALI, CSR_KAPALI, BRANCH_KAPALI,
    OS_KAPALI, BOS_HEDEF, BOS_HEDEF, BOS_OLAGAN_DISI
    };

endpackage
