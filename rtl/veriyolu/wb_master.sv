`timescale 1ns / 1ps

`include "sabitler.vh"
`include "yapilandirma.vh"

/*
    Ilk cycle'ı bos atlamamak icin yapilan, kombinasyonel olarak istegin ilerletilmesi yontemi, WB B4 spesifikasyonuna uyulması amaciyla,
    bu modulde kullanilmamaktadır.
*/
module vyd_wbm_donusturucu #(
    parameter ADRES_GENISLIGI = `ADRES_GENISLIGI_BIT,
    parameter SOZCUK_GENISLIGI = `SOZCUK_GENISLIGI_BIT,

    parameter CEVRE_BIRIM_BASLA_ADRES = `CEVRE_BIRIM_BASLANGIC,
    parameter CEVRE_BIRIM_BITIS_ADRES = `CEVRE_BIRIM_BITIS,
    localparam CEVRE_BIRIM_ADRES_GENISLIGI = CEVRE_BIRIM_BITIS_ADRES - CEVRE_BIRIM_BASLA_ADRES,
    localparam CEVRE_BIRIM_IC_ADRES_GENISLIGI = $clog2(CEVRE_BIRIM_ADRES_GENISLIGI),

    parameter SLAVE_SAYISI = `WB_SLAVE_SAYISI,
    localparam SLAVE_SECICI_GENISLIGI = SLAVE_SAYISI > 1 ? $clog2(SLAVE_SAYISI) : 1,

    //// diger slaveler burada belirtilmelidir.
    parameter logic [ADRES_GENISLIGI-1:0] slave_baslangic_adres [SLAVE_SAYISI] = {
    `UART_BASLANGIC_ADRESI
    },
    parameter logic [ADRES_GENISLIGI-1:0] slave_bitis_adres [SLAVE_SAYISI] = {
    `UART_BITIS_ADRESI
    }
)(
    input  wire                                             clk_i                     ,
    input  wire                                            rstn_i                     ,

    /*VYD Iletisimi*/
    input  wire [ADRES_GENISLIGI-1:0]                     adres_i                     ,
    input  wire [SOZCUK_GENISLIGI-1:0]                     veri_i                     ,
    output wire [SOZCUK_GENISLIGI-1:0]                     veri_o                     ,
    input  wire                                             yaz_i                     ,
    input  wire                                           istek_i                     ,
    output wire                                           hazir_o                     , // hazir

    /*SLAVE iletisimi*/ // Aslında dat_o ve adr_o tekillestirilebilir
    output wire [CEVRE_BIRIM_IC_ADRES_GENISLIGI-1:0]      wbs_adr_o                   , //[0:SLAVE_SAYISI-1],
    output wire [SOZCUK_GENISLIGI-1:0]                    wbs_dat_o                   , //[0:SLAVE_SAYISI-1],
    input  wire [SOZCUK_GENISLIGI-1:0]                    wbs_dat_i [0:SLAVE_SAYISI-1],

    output wire                                           wbs_we_o  [0:SLAVE_SAYISI-1],
    output wire                                           wbs_stb_o [0:SLAVE_SAYISI-1],
    output wire                                           wbs_cyc_o [0:SLAVE_SAYISI-1],
    input  wire                                           wbs_ack_i [0:SLAVE_SAYISI-1]
);

    // durum makinesi durumları
    enum logic [0:0] {BOSTA, ACK_BEKLE}  durum_r, durum_ns;

    logic we_r, stb_r, cyc_r;
    logic we_ns, stb_ns, cyc_ns;

    logic [SLAVE_SECICI_GENISLIGI-1:0] secilen_slave;

    logic hazir_cmb;
    assign hazir_o = hazir_cmb;
    assign veri_o = wbs_dat_i[secilen_slave];

    logic slave_veri_hazir;
    assign slave_veri_hazir = wbs_ack_i[secilen_slave];

    always_comb begin: hazir_sec
        if(durum_r == BOSTA && !istek_i)
            hazir_cmb = 1;
        else if(durum_r == ACK_BEKLE && slave_veri_hazir) begin
            hazir_cmb = 1;
        end else begin
            hazir_cmb = 0;
        end
    end

    always_comb begin: iletisim_kurulacak_slave_sec
        secilen_slave = 0;
        for(int i = 0; i < SLAVE_SAYISI; i = i + 1) begin
            if(adres_i >= slave_baslangic_adres[i] && adres_i <= slave_bitis_adres[i]) begin
                secilen_slave = i;
            end
        end
    end

    genvar j;
    generate
        for(j = 0; j < SLAVE_SAYISI; j = j + 1) begin
            assign  wbs_we_o[j] = (secilen_slave == j) ?  we_r : 1'b0;
            assign wbs_stb_o[j] = (secilen_slave == j) ? stb_r : 1'b0;
            assign wbs_cyc_o[j] = (secilen_slave == j) ? cyc_r : 1'b0;
        end
    endgenerate

    always_comb begin: stb_cyc_we_denetleyici
        case(durum_r)
            BOSTA: begin
                if(istek_i) begin
                    we_ns = yaz_i;
                    cyc_ns =     1;
                    stb_ns =     1;
                end else begin
                    we_ns =     0;
                    cyc_ns =     0;
                    stb_ns =     0;
                end
            end
            ACK_BEKLE: begin
                if(slave_veri_hazir) begin
                    we_ns =     0;
                    cyc_ns =     0;
                    stb_ns =     0;
                end else begin
                    we_ns = yaz_i;
                    cyc_ns =     1;
                    stb_ns =     1;
                end
            end
        endcase
    end

    assign wbs_dat_o = veri_i;
    assign wbs_adr_o = adres_i[0+:CEVRE_BIRIM_IC_ADRES_GENISLIGI];
    always_comb begin: denetleyici_ns_belirle
        durum_ns = BOSTA;
        case(durum_r)
            BOSTA: begin
                if(istek_i)
                    durum_ns = ACK_BEKLE;
                else
                    durum_ns = BOSTA;
            end
            ACK_BEKLE: begin
                if(slave_veri_hazir) begin
                    durum_ns = BOSTA;
                end else begin
                    durum_ns = ACK_BEKLE;
                end
            end
        endcase
    end

    always_ff @(posedge clk_i) begin
        if(!rstn_i) begin
            durum_r <= BOSTA;
            we_r <= 0;
            stb_r <= 0;
            cyc_r <= 0;
        end else begin
            durum_r <= durum_ns;
            we_r <= we_ns;
            stb_r <= stb_ns;
            cyc_r <= cyc_ns;
        end
    end

endmodule
