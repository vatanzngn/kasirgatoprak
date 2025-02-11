`timescale 1ns / 1ps

/*
    işleç yönlendirmeyi tamamla.
*/
// CSR BOZUK
`include "sabitler.vh"
`include "yapilandirma.vh"
import yurut_pkg::*;
import coz_pkg::*;
import csr_pkg::*;
import fpnew_pkg::*;
import sabitler_pkg::*;
module yurut(
    input wire clk_i,
    input wire rstn_i,

    input coz_sonucu_t coz_yurut_i,

    output reg [4:0] rd_adres_o,
    output reg [31:0] yurut_sonuc_o,
    output reg yaz_geriyaz_o,
    output reg yaz_geriyaz_fp_o,

    output wire [`SOZCUK_GENISLIGI_BIT-1:0] yonlendir_rd_coz_o,
    output wire [4:0] yonlendir_rd_adres_tdb_o,
    output wire yonlendir_rd_yaz_tdb_o,
    output wire yazma_hedefi_fp_o,
    output wire hazir,

    output reg [3:0]                      yurut_mcause_ic_o,
    output reg [`ADRES_GENISLIGI_BIT-1:0] yurut_mepc_o,
    output reg [`ADRES_GENISLIGI_BIT-1:0] yurut_mtval_o,
    output reg                            yurut_exc_o,

    output reg [11:0] csr_adres_o,
    output reg [31:0] csr_veri_o,
    output reg csr_yaz_o,
    //l1v yonlendirme
    input wire l1v_hazir_i,
    input wire [`SOZCUK_GENISLIGI_BIT-1:0] l1v_veri_i,
    output wire [`ADRES_GENISLIGI_BIT-1:0] l1v_adres_o,
    output wire [`MASKE_GENISLIGI_BIT-1:0] l1v_maske_o,
    output wire [`SOZCUK_GENISLIGI_BIT-1:0] l1v_veri_o,
    output wire l1v_istek_o,
    output wire l1v_yaz_o,

    `ifdef DEBUG
    output reg [31:0] debug_yurut_buyruk_o,
    output reg [31:0] debug_l1v_veri_o,
    output reg [31:0] debug_l1v_adres_o,
    output reg [31:0] debug_l1v_maske_o,
    output reg [31:0] debug_l1v_veri_i,
    output coz_sonucu_t debug_coz_yurut_i,
    `endif

    input wire bh_bosalt_i,
    input wire bh_duraklat_i,
    output wire yurut_gy_gecerli_o
);

    `ifdef DEBUG
    always @(posedge clk_i) begin
        debug_yurut_buyruk_o <= coz_yurut_i.olagan_disi.debug_buyruk;
        debug_l1v_veri_o <= l1v_veri_o;
        debug_l1v_adres_o <= gercek_adres;
        debug_l1v_maske_o <= l1v_maske_o;
        debug_l1v_veri_i <= l1v_veri_i;
        debug_coz_yurut_i <= coz_yurut_i;
    end
    `endif

    /* Atılabilecek exceptionlar
    4: Load address misaligned
    5: Load access fault
    6: Store/AMO address misaligned
    7: Store/AMO access fault
    */

    // exceptionlar arası sıra
    // LAM > LAF > SAM > SAF
    `ifdef FPU
    fpnew_pkg::operation_e fp_op;

    always_comb begin
        fp_op = op_to_cv(coz_yurut_i.os_kontrol.os_islem);
    end

    logic [31:0] fp_islenec [0:2];
    always_comb begin
        fp_islenec[0] = coz_yurut_i.islenec1_yapi.islenec;
        fp_islenec[1] = coz_yurut_i.islenec2_yapi.islenec;
        fp_islenec[2] = coz_yurut_i.islenec3_yapi.islenec;
        if(fp_op == fpnew_pkg::ADD) begin
            fp_islenec[1] = coz_yurut_i.islenec1_yapi.islenec;
            fp_islenec[2] = coz_yurut_i.islenec2_yapi.islenec;
        end
    end
    `endif

    wire [31:0] sonuc;
    wire [31:0] sonuc_amb;
    toprak_amb amb(
        .amb_kontrol_i(coz_yurut_i.amb_kontrol),
        .amb_yazmac1_i(coz_yurut_i.islenec1_yapi.islenec),
        .amb_yazmac2_i(coz_yurut_i.islenec2_yapi.islenec),
        .amb_sonuc_o(sonuc_amb)
    );

    wire abib_hazir;
    wire [31:0] sonuc_abib;

    wire [2:0] abib_exc;

    wire [31:0] gercek_adres;
    wire [31:0] l1v_hizali_adres = {gercek_adres[31:2], 2'b00};
    assign l1v_adres_o = l1v_hizali_adres;

    abib abib(
        .clk_i(clk_i),
        .rstn_i(rstn_i),
        .bib_kontrol_i(coz_yurut_i.abib_kontrol),
        .rs1_i(coz_yurut_i.islenec1_yapi.islenec),
        .rs2_i(coz_yurut_i.islenec3_yapi.islenec),
        .bib_rs2_i(coz_yurut_i.islenec2_yapi.islenec),
        .l1v_veri_i(l1v_veri_i),
        .l1v_hazir_i(l1v_hazir_i),
        .l1v_hedef_adres_o(gercek_adres),
        .l1v_veri_o(l1v_veri_o),
        .l1v_maske_o(l1v_maske_o),
        .l1v_istek_o(l1v_istek_o),
        .l1v_yaz_o(l1v_yaz_o),
        .exc_i(coz_yurut_i.olagan_disi.olagan_disi_durum),
        .abib_exc_o(abib_exc),
        .hazir_o(abib_hazir),
        .sonuc_o(sonuc_abib),
        .bh_bosalt_i(bh_bosalt_i)
    );

    wire [31:0] sonuc_muib;
    wire muib_hazir;

    muib mb (
        .rs1_i(coz_yurut_i.islenec1_yapi.islenec),
        .rs2_i(coz_yurut_i.islenec2_yapi.islenec),
        .muib_kontrol_i(coz_yurut_i.muib_kontrol),
        .clk_i(clk_i),
        .rstn_i(rstn_i),
        .hazir_o(muib_hazir),
        .bh_duraklat_i(bh_duraklat_i),
        .yurut_hazir_i(hazir),
        .sonuc_o(sonuc_muib)
    );


    reg [31:0] sonuc_csr_int_cmb;

    assign sonuc = (coz_yurut_i.abib_kontrol.abib_aktif) ? sonuc_abib :
    (coz_yurut_i.csr_kontrol.csr_aktif) ? sonuc_csr_int_cmb :
    (coz_yurut_i.muib_kontrol.muib_aktif) ? sonuc_muib :
    `ifdef FPU
    (coz_yurut_i.os_kontrol.os_aktif) ? fp_sonuc_r :
    `endif
    sonuc_amb;

    reg [31:0] csr_sonuc_cmb;

    integer i;
    always_comb begin
        csr_sonuc_cmb = 0;
        sonuc_csr_int_cmb = 0;
        if(coz_yurut_i.csr_kontrol.csr_aktif) begin
            case(coz_yurut_i.csr_kontrol.csr_islem)
                /*
        The CSRRW (Atomic Read/Write CSR) instruction atomically swaps values in the CSRs and
    integer registers. CSRRW reads the old value of the CSR, zero-extends the value to XLEN bits,
    then writes it to integer register rd. The initial value in rs1 is written to the CSR. If rd=x0, then
    the instruction shall not read the CSR and shall not cause any of the side effects that might occur
    on a CSR read. Okuması tasarımımızda herhangi bir side effecte neden olmadığından okuyoruz ama
    tam sayı registerlarındaki değeri değiştirmiyoruz. Bu kısım spike'da test edilip onun davranışına çevirilecek
        */

                CSR_RW: begin
                    csr_sonuc_cmb = coz_yurut_i.islenec1_yapi.islenec; //+
                    sonuc_csr_int_cmb = (coz_yurut_i.sonuc1_hedef.islenec_adresi == 0) ?
                    coz_yurut_i.islenec1_yapi.islenec :
                    coz_yurut_i.islenec2_yapi.islenec;
                end
                /*
        The CSRRS (Atomic Read and Set Bits in CSR) instruction reads the value of the CSR,
        zeroextends the value to XLEN bits,
    and writes it to integer register rd. The initial value in integer
    register rs1 is treated as a bit mask that specifies bit positions to be set in the CSR. Any bit that
    is high in rs1 will cause the corresponding bit to be set in the CSR, if that CSR bit is writable.
    Other bits in the CSR are unaffected (though CSRs might have side effects when written).
        */
                CSR_RS: begin
                    //if(yaz_kontrol_geriyaz_i[2]) begin
                    sonuc_csr_int_cmb = coz_yurut_i.islenec2_yapi.islenec;
                    csr_sonuc_cmb = coz_yurut_i.islenec2_yapi.islenec;
                    if(coz_yurut_i.islenec1_yapi.islenec !=0) begin
                        for(i = 0; 32 > i; i = i + 1) begin
                            if(coz_yurut_i.islenec1_yapi.islenec[i]) begin
                                csr_sonuc_cmb[i] = 1;
                            end
                        end
                    end
                    //end
                end
                /*
        The CSRRC (Atomic Read and Clear Bits in CSR) instruction reads the value of the CSR, zeroextends the value to XLEN bits, and writes it to integer register rd. The initial value in integer
        register rs1 is treated as a bit mask that specifies bit positions to be cleared in the CSR. Any bit
        that is high in rs1 will cause the corresponding bit to be cleared in the CSR, if that CSR bit is
        writable. Other bits in the CSR are unaffected.
        */
                CSR_RC: begin
                    sonuc_csr_int_cmb = coz_yurut_i.islenec2_yapi.islenec;
                    csr_sonuc_cmb = coz_yurut_i.islenec2_yapi.islenec;
                    if(coz_yurut_i.islenec1_yapi.islenec != 0) begin
                        for(i = 0; 32 > i; i = i + 1) begin
                            if(coz_yurut_i.islenec1_yapi.islenec[i]) begin
                                csr_sonuc_cmb[i] = 0;
                            end
                        end
                    end
                end
                CSR_RWI: begin
                    csr_sonuc_cmb = coz_yurut_i.islenec1_yapi.islenec;
                    sonuc_csr_int_cmb = (coz_yurut_i.sonuc1_hedef.islenec_adresi != 0) ?
                    coz_yurut_i.islenec2_yapi.islenec :
                    coz_yurut_i.islenec1_yapi.islenec;
                end
                CSR_RSI: begin
                    sonuc_csr_int_cmb = coz_yurut_i.islenec2_yapi.islenec;
                    csr_sonuc_cmb = coz_yurut_i.islenec2_yapi.islenec;
                    if(coz_yurut_i.islenec1_yapi.islenec != 0) begin
                        for(i = 0; 32 > i; i = i + 1) begin
                            if(coz_yurut_i.islenec1_yapi.islenec[i]) begin
                                csr_sonuc_cmb[i] = 1;
                            end
                        end
                    end
                end
                CSR_RCI: begin
                    sonuc_csr_int_cmb = coz_yurut_i.islenec2_yapi.islenec;
                    csr_sonuc_cmb = coz_yurut_i.islenec2_yapi.islenec;
                    if(coz_yurut_i.islenec1_yapi.islenec != 0) begin
                        for(i = 0; 32 > i; i = i + 1) begin
                            if(coz_yurut_i.islenec1_yapi.islenec[i]) begin
                                csr_sonuc_cmb[i] = 0;
                            end
                        end
                    end
                end
                default:; // başka csr buyrugu yok
            endcase

        end 
        `ifdef FPU
        else if(coz_yurut_i.os_kontrol.os_aktif) begin
            csr_sonuc_cmb = fp_flag_r;
        end
        `endif
    end
    `ifdef FPU
    logic fp_gecerli_ns, fp_gecerli_r;
    logic [SOZCUK_GENISLIGI-1:0] fp_sonuc_ns, fp_sonuc_r;
    status_t fp_flag_ns, fp_flag_r;
    always_comb begin
        fp_sonuc_ns = fp_sonuc_r;
        fp_flag_ns = fp_flag_r;
        if(fp_gecerli_r) begin
            fp_gecerli_ns = 0;
            fp_sonuc_ns = 0;
            fp_flag_ns = 0;
        end else if(fp_sonuc_hazir) begin
            fp_gecerli_ns = 1;
            fp_sonuc_ns = sonuc_fp;
            fp_flag_ns = fpu_fflag_cikti;
        end else begin
            fp_gecerli_ns = 0;
        end
    end

    always_ff @(posedge  clk_i) begin
        if(!rstn_i) begin
            fp_gecerli_r <= 0;
            fp_sonuc_r <= 0;
            fp_flag_r <= 0;
        end else begin
            fp_gecerli_r <= fp_gecerli_ns;
            fp_sonuc_r <= fp_sonuc_ns;
            fp_flag_r <= fp_flag_ns;
        end
    end

    logic [SOZCUK_GENISLIGI-1:0] sonuc_fp;
    wire fp_istek_gecerli = coz_yurut_i.os_kontrol.os_aktif;
    logic fp_mesgul;
    wire FPDEN_SONUC_ALINABILIR = 1'b1;
    logic fp_sonuc_hazir;
    status_t fpu_fflag_cikti;
    logic fp_istek_alabilir;
    fpnew_top #(
        .Features(CVFPUFeatures),
        .Implementation(CVFPUImplementation),
        .PulpDivsqrt(0),
        .TagType(CVFPUTagType),
        .TrueSIMDClass(1'b0),
        .EnableSIMDMask(1'b0)
    ) cvfpu (
        .clk_i(clk_i),
        .rst_ni(rstn_i),
        .operands_i({fp_islenec[2], fp_islenec[1], fp_islenec[0]}),
        .rnd_mode_i(rm_to_cv(coz_yurut_i.os_kontrol.os_rm)),
        .op_i(fp_op),
        .op_mod_i(op_mode_to_cv(coz_yurut_i.os_kontrol.os_islem)),
        .src_fmt_i(FP32),
        .dst_fmt_i(FP32),
        .int_fmt_i(INT32),
        .vectorial_op_i(1'b0),
        .tag_i(1'b0),
        .simd_mask_i(1'b0),
        .in_valid_i(fp_istek_gecerli && !coz_yurut_i.olagan_disi.olagan_disi_durum),
        .in_ready_o(fp_istek_alabilir),
        .flush_i(bh_bosalt_i),
        .result_o(sonuc_fp),
        .status_o(fpu_fflag_cikti),
        .tag_o(),
        .out_valid_o(fp_sonuc_hazir),
        .out_ready_i(!hazir),
        .busy_o(fp_mesgul)
    );

    
`endif
    assign yazma_hedefi_fp_o = coz_yurut_i.sonuc1_hedef.yazma_hedefi == OS_yaz;
    reg gecerli;
    assign yurut_gy_gecerli_o = gecerli;
    assign hazir = (1 && abib_hazir && muib_hazir && 
    `ifdef FPU
    ((!coz_yurut_i.os_kontrol.os_aktif ) ||
    coz_yurut_i.os_kontrol.os_aktif && fp_gecerli_r))
    `else
    1)
    `endif
    ||
    (abib_exc[2]) ||
    (coz_yurut_i.olagan_disi.olagan_disi_durum);

    assign yonlendir_rd_coz_o = sonuc;
    assign yonlendir_rd_adres_tdb_o = coz_yurut_i.sonuc1_hedef.islenec_adresi;
    assign yonlendir_rd_yaz_tdb_o = coz_yurut_i.sonuc1_hedef.yazma_hedefi == TS_yaz ||
    coz_yurut_i.sonuc1_hedef.yazma_hedefi == OS_yaz;

    always @(posedge clk_i) begin
        if(!rstn_i || bh_bosalt_i) begin
            rd_adres_o <= 0;
            yurut_sonuc_o <= 0;
            yurut_mcause_ic_o <= 0;
            yurut_mepc_o <= 0;
            yurut_mtval_o <= 0;
            yurut_exc_o <= 0;

            csr_yaz_o <= 0;
            csr_adres_o <= 0;
            csr_veri_o <= 0;
            gecerli <= 0;
            yaz_geriyaz_o <= 0;
            yaz_geriyaz_fp_o <= 0;
        end else if(!bh_duraklat_i) begin
            gecerli <=  coz_yurut_i.olagan_disi.mcause == `NOT_EXC_INV ? 0 : hazir;
            yurut_mepc_o <= coz_yurut_i.olagan_disi.mepc;
            if(abib_exc[2] || coz_yurut_i.olagan_disi.olagan_disi_durum) begin
                yurut_exc_o <= 1;
                if(coz_yurut_i.olagan_disi.olagan_disi_durum) begin
                    yurut_mtval_o <= coz_yurut_i.olagan_disi.mtval;
                    yurut_mcause_ic_o <= coz_yurut_i.olagan_disi.mcause;
                end else begin
                    yurut_mtval_o <= gercek_adres;
                    case(abib_exc)
                        3'b101: yurut_mcause_ic_o <= `EXC_LAM;
                        3'b111: yurut_mcause_ic_o <= `EXC_LAF;
                        3'b100: yurut_mcause_ic_o <= `EXC_SAM;
                        3'b110: yurut_mcause_ic_o <= `EXC_SAF;
                        default:; // abib yalnizca bu exceptionlari atabilir.
                    endcase
                end
            end else begin
                rd_adres_o <=  coz_yurut_i.sonuc1_hedef.islenec_adresi;
                yurut_sonuc_o <= sonuc;
                yaz_geriyaz_o <= (coz_yurut_i.sonuc1_hedef.yazma_hedefi == TS_yaz || coz_yurut_i.sonuc1_hedef.yazma_hedefi == OS_yaz ) && hazir;
                yaz_geriyaz_fp_o <= yazma_hedefi_fp_o && hazir;
                yurut_exc_o <= 0;
                yurut_mepc_o <= coz_yurut_i.olagan_disi.mepc;
                yurut_mtval_o <= coz_yurut_i.olagan_disi.mtval;
                yurut_mcause_ic_o <= 0;
                csr_adres_o <= !coz_yurut_i.os_kontrol.os_aktif ? csr_adres(
                    csr_ic_adres_enum(coz_yurut_i.sonuc2_hedef.islenec_adresi)
                ): 12'h4;
                csr_veri_o <= csr_sonuc_cmb;
                csr_yaz_o <= hazir && (coz_yurut_i.sonuc2_hedef.yazma_hedefi == CSR_yaz || coz_yurut_i.os_kontrol.os_aktif);
            end
        end else begin
            gecerli <= 0;
            yurut_exc_o <= 0;
            yaz_geriyaz_o <= 0;
            csr_yaz_o <= 0;
            yaz_geriyaz_fp_o <= 0;
        end
    end
endmodule
