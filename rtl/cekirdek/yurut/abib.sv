`timescale 1ns / 1ps

`include "yapilandirma.vh"
`include "sabitler.vh"
`include "uop.vh"

import coz_pkg::*;
import yurut_pkg::*;
module abib(
    input wire clk_i,
    input wire rstn_i,

    input abib_kontrol_t bib_kontrol_i,
    input wire [`SOZCUK_GENISLIGI_BIT-1:0] rs1_i,
    input wire [`SOZCUK_GENISLIGI_BIT-1:0] rs2_i,
    input wire [`SOZCUK_GENISLIGI_BIT-1:0] bib_rs2_i,
    // l1v baglantisi
    input wire [`SOZCUK_GENISLIGI_BIT-1:0] l1v_veri_i,
    input wire l1v_hazir_i,

    output wire [`ADRES_GENISLIGI_BIT-1:0] l1v_hedef_adres_o,
    output wire [`SOZCUK_GENISLIGI_BIT-1:0] l1v_veri_o,
    output wire [`MASKE_GENISLIGI_BIT-1:0] l1v_maske_o,
    output wire l1v_istek_o,
    output wire l1v_yaz_o,

    // exceptionlar
    input wire exc_i,
    output wire [2:0] abib_exc_o,

    output wire hazir_o,
    output wire [`SOZCUK_GENISLIGI_BIT-1:0] sonuc_o, // rd

    input wire bh_bosalt_i
);
    // exceptionlar arası sıra
    // LAM > LAF > SAM > SAF
    // L ve S eş zamanlı gerçekleşemez zaten.
    wire [2:0] abib_exc_cmb;
    assign abib_exc_o = abib_exc_cmb;
    localparam BOSTA = 2'b00,
    YUKLE = 2'b01,
    SAKLA = 2'b10;

    reg [`ADRES_GENISLIGI_BIT-1:0] reserved_adres_ns, reserved_adres_r;

    reg hazir_cmb;
    reg [1:0] durum;
    reg [1:0] durum_ns;

    reg l1v_istek_cmb;
    reg l1v_yaz_cmb;
    reg [`SOZCUK_GENISLIGI_BIT-1:0] sonuc_cmb;

    reg [`SOZCUK_GENISLIGI_BIT-1:0] saklanacak_veri_r;
    reg [`SOZCUK_GENISLIGI_BIT-1:0] saklanacak_veri_ns;
    reg [`SOZCUK_GENISLIGI_BIT/8-1:0] maske_r;
    reg [`SOZCUK_GENISLIGI_BIT/8-1:0] maske_ns;
    reg [`SOZCUK_GENISLIGI_BIT-1:0] l1v_veri_cmb;

    wire bib_aktif = bib_kontrol_i.abib_aktif;
    wire atomik_yukle_sakla;

    assign atomik_yukle_sakla =  bib_kontrol_i.abib_islem == ABIB_AMOSWAPW  ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_AMOADDW   ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_AMOXORW   ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_AMOANDW   ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_AMOORW    ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_AMOMINW   ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_AMO_MAXW   ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_AMOMINUW  ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_AMOMAXUW  ? 1'b1 :
    1'b0;

    wire [`SOZCUK_GENISLIGI_BIT-1:0] hedef_adres = rs2_i + rs1_i;
    wire [1:0] byte_indis;

    assign byte_indis = hedef_adres[0+:2];

    logic hazir_o_cmb;

    wire reserv_fail = reserved_adres_r != hedef_adres;
    wire amo_reserv_fail = reserv_fail && bib_kontrol_i.abib_islem == ABIB_SRW;

    always_comb begin
        hazir_o_cmb = 1;
        if(durum == BOSTA && bib_aktif) begin
            hazir_o_cmb = 0;
            if((bib_kontrol_i.abib_islem == ABIB_SRW) && reserved_adres_r != hedef_adres) begin
                hazir_o_cmb = 1;
            end
        end else if(!l1v_hazir_i)
            hazir_o_cmb = 0;
        else if(durum == YUKLE && l1v_hazir_i && atomik_yukle_sakla)
            hazir_o_cmb = 0;
    end

    assign hazir_o = hazir_o_cmb;

    assign l1v_hedef_adres_o = hedef_adres;
    wire okuma_gerekli;

    assign okuma_gerekli = bib_kontrol_i.abib_islem == ABIB_LB         ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_LH         ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_LW         ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_LBU        ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_LHU        ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_AMOSWAPW  ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_AMOADDW   ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_AMOXORW   ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_AMOANDW   ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_AMOORW    ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_AMOMINW   ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_AMO_MAXW   ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_AMOMINUW  ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_AMOMAXUW  ? 1'b1 :

    bib_kontrol_i.abib_islem == ABIB_LRW        ? 1'b1 :
    1'b0;

    wire atomik_kosullu_yukle_sakla;

    assign atomik_kosullu_yukle_sakla = bib_kontrol_i.abib_islem == ABIB_LRW ? 1'b1 :
    bib_kontrol_i.abib_islem == ABIB_SRW ? 1'b1 :
    1'b0;

    reg [`SOZCUK_GENISLIGI_BIT-1:0] veri_i_r,veri_i_ns;
    wire af, am;

    reg istek_tipi_word_cmb;
    reg istek_tipi_hw_cmb;
    reg istek_tipi_b_cmb;
    always @(*) begin
        istek_tipi_word_cmb = 0;
        istek_tipi_hw_cmb = 0;
        istek_tipi_b_cmb = 0;
        case(bib_kontrol_i.abib_islem)
            ABIB_LW,
            ABIB_SW,
            ABIB_LRW,
            ABIB_SRW,
            ABIB_AMOSWAPW,
            ABIB_AMOADDW,
            ABIB_AMOXORW,
            ABIB_AMOANDW,
            ABIB_AMOORW,
            ABIB_AMOMINW,
            ABIB_AMO_MAXW,
            ABIB_AMOMINUW,
            ABIB_AMOMAXUW: istek_tipi_word_cmb = 1;
            ABIB_LH,
            ABIB_LHU,
            ABIB_SH: istek_tipi_hw_cmb = 1;
            ABIB_LB,
            ABIB_LBU,
            ABIB_SB: istek_tipi_b_cmb = 1;
            default:;
        endcase
    end

    assign af = hedef_adres > `BITIS_ADRESI;
    assign am = istek_tipi_word_cmb && byte_indis != 2'b00 || istek_tipi_hw_cmb && byte_indis[0] != 0;

    //assign laf = 01 = af && okuma_gerekli;  // 01
    //assign saf = 00 = af && !okuma_gerekli; // 00
    //assign lam = 11 = am && okuma_gerekli;  // 11
    //assign sam = 10 am && !okuma_gerekli; // 10
    wire exc = af || am;


    // kombinasyonel loopu bozmak için, l1v istek ve l1v_yazı gerçek bir mealy makinesi gibi yazalım

    // states = {BOSTA, YUKLE, SAKLA}
    // inputs = {l1v_hazir_i, bib_kontrol (yan etkiler: okuma_gerekli, atomik), l1v_veri_i}
    // outputs = {l1v_istek_o, l1v_yaz_o, l1v_hedef_adres_o, l1v_veri_o}

    // BOSTA state transitions:
    // delta(BOSTA, okuma_gerekli) = YUKLE; outputs: l1v_istek_o = 1
    // delta(BOSTA, !okuma_gerekli) = BOSTA; outputs: l1v_istek_o = 0

    // YUKLE state transitions:
    // delta(YUKLE, !l1v_hazir_i) = YUKLE; outputs: l1v_istek_o = 1
    // delta(YUKLE, l1v_hazir_i && !atomik) = BOSTA; outputs: l1v_istek_o = 0
    // delta(YUKLE, l1v_hazir_i && atomik) = SAKLA; outputs: l1v_istek_o = 1, l1v_yaz_o = 1

    // SAKLA state transitions:
    // delta(SAKLA, !l1v_hazir_i) = SAKLA; outputs: l1v_istek_o = 1, l1v_yaz_o = 1;
    // delta(SAKLA, l1v_hazir_i) = BOSTA; outputs: l1v_istek_o = 0;

    // gosterilmeyen tum degerler 0 kabul edilebilir veri_o hariç

    always @(*) begin
        maske_ns = maske_r;
        case(bib_kontrol_i.abib_islem)
            ABIB_SB: begin
                case(byte_indis)
                    2'b00: begin
                        maske_ns = `MASKE_GENISLIGI_BIT'b0001;
                    end
                    2'b01: begin
                        maske_ns = `MASKE_GENISLIGI_BIT'b0010;
                    end
                    2'b10: begin
                        maske_ns = `MASKE_GENISLIGI_BIT'b0100;
                    end
                    2'b11: begin
                        maske_ns = `MASKE_GENISLIGI_BIT'b1000;
                    end
                endcase
            end
            ABIB_SH: begin
                case(byte_indis)
                    2'b00: begin
                        maske_ns = `MASKE_GENISLIGI_BIT'b0011;
                    end
                    2'b10: begin
                        maske_ns = `MASKE_GENISLIGI_BIT'b1100;
                    end
                    default: begin
                        $display("abib, SH beklenmeyen maske!");
                        // hata fırlatmamız gerekiyor sanırım
                    end
                endcase
            end
            ABIB_SW: begin
                maske_ns = `MASKE_GENISLIGI_BIT'b1111;
            end
            ABIB_SRW: begin
                maske_ns = `MASKE_GENISLIGI_BIT'b1111;
            end
            default: maske_ns = `MASKE_GENISLIGI_BIT'b1111;
        endcase
    end


    assign abib_exc_cmb = bib_aktif ? {exc, af, okuma_gerekli} : 0;
    always @(*) begin
        hazir_cmb = 0;
        durum_ns = BOSTA;
        sonuc_cmb = 32'b0;
        reserved_adres_ns = reserved_adres_r;
        saklanacak_veri_ns = saklanacak_veri_r;
        veri_i_ns = veri_i_r;
        l1v_istek_cmb = 0;
        l1v_veri_cmb = (atomik_yukle_sakla) ? saklanacak_veri_ns : bib_rs2_i;
        l1v_yaz_cmb = 0;
        case(durum)
            BOSTA: begin
                hazir_cmb = 1;
                // yukle sakla isteklerini at kombinasyonel olarak
                if(bib_aktif) begin
                    hazir_cmb = 0;
                    if(okuma_gerekli) begin
                        durum_ns = YUKLE;
                        if (bib_kontrol_i.abib_islem == ABIB_LRW ) begin
                            reserved_adres_ns = hedef_adres;
                        end
                    end else begin
                        durum_ns = SAKLA;
                        if(bib_kontrol_i.abib_islem == ABIB_SRW) begin
                            if (!(reserved_adres_r == hedef_adres)) begin
                                hazir_cmb = 1;
                                sonuc_cmb = 1;
                                durum_ns = BOSTA;
                                l1v_yaz_cmb = 0;
                                l1v_istek_cmb = 0;
                            end
                        end
                        if (reserved_adres_r == hedef_adres) begin
                            reserved_adres_ns = 0;
                        end
                    end
                end
            end

            YUKLE: begin
                l1v_istek_cmb = 1;
                l1v_yaz_cmb = atomik_yukle_sakla;
                if(l1v_hazir_i) begin
                    if(atomik_yukle_sakla) begin
                        hazir_cmb = 0;
                        veri_i_ns = l1v_veri_i;
                        durum_ns = SAKLA;
                        case(bib_kontrol_i.abib_islem)
                            ABIB_AMOSWAPW: begin
                                saklanacak_veri_ns = bib_rs2_i;

                            end
                            ABIB_AMOADDW: begin
                                saklanacak_veri_ns = bib_rs2_i + l1v_veri_i;

                            end

                            ABIB_AMOXORW: begin
                                saklanacak_veri_ns = bib_rs2_i ^ l1v_veri_i;

                            end
                            ABIB_AMOANDW: begin
                                saklanacak_veri_ns = bib_rs2_i & l1v_veri_i;

                            end
                            ABIB_AMOORW: begin
                                saklanacak_veri_ns = bib_rs2_i | l1v_veri_i;

                            end
                            ABIB_AMOMINW: begin
                                saklanacak_veri_ns = ($signed(bib_rs2_i) < $signed(l1v_veri_i)) ? bib_rs2_i : l1v_veri_i;

                            end
                            ABIB_AMO_MAXW: begin
                                saklanacak_veri_ns = ($signed(bib_rs2_i) > $signed(l1v_veri_i)) ? bib_rs2_i : l1v_veri_i;

                            end
                            ABIB_AMOMINUW: begin
                                saklanacak_veri_ns = ($unsigned(bib_rs2_i) < $unsigned(l1v_veri_i)) ? bib_rs2_i : l1v_veri_i;

                            end
                            ABIB_AMOMAXUW: begin
                                saklanacak_veri_ns = ($unsigned(bib_rs2_i) > $unsigned(l1v_veri_i)) ? bib_rs2_i : l1v_veri_i;
                            end
                            default:; // baska bir AMO islemi yok
                        endcase
                    end else begin
                        hazir_cmb = 1;
                        case(bib_kontrol_i.abib_islem)
                            ABIB_LW, ABIB_LRW:    begin // The LW instruction loads a 32-bit value from memory into rd
                                sonuc_cmb = l1v_veri_i;
                            end
                            ABIB_LH:    begin
                                sonuc_cmb = $signed(l1v_veri_i[byte_indis*8 +: 16]);
                            end
                            ABIB_LB:    begin
                                sonuc_cmb = $signed(l1v_veri_i[byte_indis*8 +: 8]);
                            end
                            ABIB_LBU:   begin
                                sonuc_cmb = {16'b0,(l1v_veri_i[byte_indis*8 +: 8])};
                            end
                            ABIB_LHU:   begin
                                sonuc_cmb = {16'b0,(l1v_veri_i[byte_indis*8 +: 16])};
                            end
                            default:;
                        endcase
                        durum_ns = BOSTA;
                    end

                end else begin
                    durum_ns = YUKLE;
                end
            end

            SAKLA: begin
                l1v_yaz_cmb = 1;
                l1v_istek_cmb = 1;
                hazir_cmb = l1v_hazir_i;
                if(l1v_hazir_i) begin
                    durum_ns = BOSTA;
                    if(atomik_yukle_sakla) begin
                        sonuc_cmb = veri_i_ns;
                    end

                    if(reserved_adres_r == hedef_adres) begin
                        reserved_adres_ns = 0;
                    end
                end else begin
                    durum_ns = SAKLA;

                end
            end

            default: begin
                durum_ns = BOSTA;
                l1v_istek_cmb = 0;
            end
        endcase
    end

    always @(posedge clk_i) begin
        if(!rstn_i || bh_bosalt_i) begin
            durum <= 0;
            maske_r <= 0;
            saklanacak_veri_r <= 0;
            veri_i_r <= 0;
            reserved_adres_r <= 0;
        end else if(exc_i || exc) begin
            //abib_exc_r <= 
        end else begin
            durum <= durum_ns;
            maske_r <= maske_ns;
            saklanacak_veri_r <= saklanacak_veri_ns;
            veri_i_r <= veri_i_ns;
            reserved_adres_r <= reserved_adres_ns;
        end
    end


    assign l1v_veri_o = (atomik_yukle_sakla) ? saklanacak_veri_r : bib_rs2_i; //l1v_veri_cmb;
    assign l1v_istek_o = !exc && (durum == SAKLA || durum == YUKLE || (durum == BOSTA && !amo_reserv_fail)) && bib_aktif; //l1v_istek_cmb;
    assign l1v_yaz_o = !exc && (durum == SAKLA || (durum == BOSTA && !okuma_gerekli)); //l1v_yaz_cmb;
    assign sonuc_o = sonuc_cmb;
    assign l1v_maske_o = maske_ns;
endmodule
