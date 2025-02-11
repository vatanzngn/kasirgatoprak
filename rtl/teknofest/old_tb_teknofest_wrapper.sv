`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2024 10:08:31
// Design Name: 
// Module Name: tb_teknofest_wrapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`include "sentez_tanimlari.vh"
`include "sabitler.vh"

`ifdef SPIKE_DIFF
    `define YAZMAC_OBEGI  u_dut.yonga.cek.coz.yazmac_obegi
    `define CSR_MODULU u_dut.yonga.cek.c
    `define GY_MODULU u_dut.yonga.cek.gy
    `define YU_MODULU u_dut.yonga.cek.yu
`endif

`default_nettype wire
import programmer_pkg::*;
import coz_pkg::*;
import csr_pkg::*;
import yurut_pkg::*;
module old_tb_teknofest_wrapper #(
    parameter HIZLI = 1,
    `ifdef USE_SRAM
    parameter int unsigned USE_SRAM = 1,
    parameter DDR_FREQ_HZ = 120_000_000,
    `else
        parameter int unsigned USE_SRAM = 0,
        parameter DDR_FREQ_HZ = 300_000_000,
    `endif
    parameter UART_BAUD_RATE = 9600
)();


    logic sys_rst_n, clk;
    logic RsRx;
    logic RsTx;

`ifndef USE_SRAM
    wire [15:0] ddr2_dq;
    wire [1:0]  ddr2_dqs_n;
    wire [1:0]  ddr2_dqs_p;
    wire [12:0] ddr2_addr;
    wire [2:0]  ddr2_ba;
    wire        ddr2_ras_n;
    wire        ddr2_cas_n;
    wire        ddr2_we_n;
    wire        ddr2_reset_n;
    wire        ddr2_ck_p;
    wire        ddr2_ck_n;
    wire        ddr2_cke;
    wire        ddr2_cs_n;
    wire [1:0]  ddr2_dm;
    wire        ddr2_odt;
`endif
    localparam CLKIN_PERIOD = 4.999*2; ///3.333;
    localparam RESET_PERIOD = 200; //in pSec 

`ifndef SIM
    wire [15:0] led;
    wire [6:0] seg;
    wire dp;
    wire [3:0] an;
`endif
    old_teknofest_wrapper #(

        .USE_SRAM      (USE_SRAM),
        .DDR_FREQ_HZ   (DDR_FREQ_HZ), // KODUN BOZULMAMASI ADINA TUTULUYOR
        .UART_BAUD_RATE(UART_BAUD_RATE)
    )u_dut(.*);

    initial begin
        sys_rst_n = 1'b0;
        #RESET_PERIOD
        sys_rst_n = 1'b1;
    end

    initial
    clk = 1'b0;
    always
    clk = #(CLKIN_PERIOD/2.0) ~clk;
    
`ifndef USE_SRAM
    genvar i;
    generate
        for(i=0; i<1; i=i+1) begin: gen_dram
            ddr2_model u_comp_ddr2
            (
               .ck      (ddr2_ck_p),
               .ck_n    (ddr2_ck_n),
               .cke     (ddr2_cke),
               .cs_n    (ddr2_cs_n),
               .ras_n   (ddr2_ras_n),
               .cas_n   (ddr2_cas_n),
               .we_n    (ddr2_we_n),
               .dm_rdqs (ddr2_dm[2*(i+1)-1:2*(i)]),
               .ba      (ddr2_ba),
               .addr    (ddr2_addr),
               .dq      (ddr2_dq[16*(i+1)-1:16*(i)]),
               .dqs     (ddr2_dqs_p[2*(i+1)-1:2*(i)]),
               .dqs_n   (ddr2_dqs_n[2*(i+1)-1:2*(i)]),
               .rdqs_n  (),
               .odt     (ddr2_odt)
            );
        end
    endgenerate
`endif

    //localparam c_BIT_PERIOD_ddr  = 100 * 13.33;
    //localparam c_BIT_PERIOD_sram = 100 * 4.999;
    //localparam c_BIT_PERIOD      = USE_SRAM ? c_BIT_PERIOD_sram : c_BIT_PERIOD_ddr;

`ifdef USE_SRAM
    localparam c_BIT_PERIOD = 100 * 4.999; // neden burası fixed deger, dinamige cevirip kontrol et
`else
    localparam c_BIT_PERIOD = 100 * 13.33; // neden burası fixed deger, dinamige cevirip kontrol et
`endif

    int ProgSize     = 12; // Number of 32 bits
    localparam MAX_PROGRAM_SIZE = 8192*4;
    logic [31:0] boot_program [MAX_PROGRAM_SIZE-1:0];

    initial begin
        for(int i=0; i<ProgSize; i++) boot_program[i] = 32'(i);
    end


    task send_uart_data;
        input [7:0] i_Data;
        integer     ii;
        begin
            // Send Start Bit
            RsRx = 1'b0;
            #(c_BIT_PERIOD); //#(c_BIT_PERIOD);
            //#1000;

            // Send Data Byte
            for (ii=0; ii<8; ii=ii+1)
                begin
                    RsRx = i_Data[ii];
                    #(c_BIT_PERIOD); //#(c_BIT_PERIOD);
                end

                // Send Stop Bit
            RsRx = 1'b1;
            #(c_BIT_PERIOD); //#(c_BIT_PERIOD);
        end
    endtask // UART_WRITE_BYTE

    task send_prog_seq();
        $display("%0t Entering", $realtime);
        send_uart_data(.i_Data("T"));
        send_uart_data(.i_Data("E"));
        send_uart_data(.i_Data("K"));
        send_uart_data(.i_Data("N"));
        send_uart_data(.i_Data("O"));
        send_uart_data(.i_Data("F"));
        send_uart_data(.i_Data("E"));
        send_uart_data(.i_Data("S"));
        send_uart_data(.i_Data("T"));
    endtask

    task send32(input logic [31:0] datain);
        send_uart_data(datain[31:24]);
        send_uart_data(datain[23:16]);
        send_uart_data(datain[15:8]);
        send_uart_data(datain[7:0]);
    endtask


    task send_program();
        int i;
        int rem;
        int extra;
        int yuzde;
        int son_yuzde;

        logic [31:0] instr;

        rem = ProgSize % 4;
        extra = 4 - rem;
        if(extra == 4)
            extra = 0;
        if(HIZLI) begin
            $display("hizli yukleme yapildi");
            for(int i = 0; i < MAX_PROGRAM_SIZE/4+1; i = i + 1) begin
                for(int j = 0; j < 4; j = j + 1) begin
                    if(4*i + j < ProgSize) begin
                        u_dut.u_teknofest_memory.gen_sram.memory[i][j*32+:32] = boot_program[i*4+j];
                    end else begin
                        u_dut.u_teknofest_memory.gen_sram.memory[i][j*32+:32] = 32'b0;
                    end
                end
            end
            u_dut.u_programmer.state_prog = SequenceFinish;
            $fflush();
        end else begin
            i = 0;
            $display("prog size: %d", ProgSize);
            rem = ProgSize % 4;
            extra = 4 - rem;
            if(extra == 4)
                extra = 0;
            send32(ProgSize+extra); // neden gerçekten bilmiyorum..
            son_yuzde = 0;
            repeat(ProgSize) begin
                instr = boot_program[i];
                send32(instr);
                i = i+1;
                yuzde = i*100/ProgSize;
                if(son_yuzde != yuzde && yuzde%10 == 0) begin
                    son_yuzde = yuzde;
                    $display("program %%%d yuklendi", yuzde);
                    $fflush();
                end
            end
            $display("16 bytlelık kenar için %d extra 4 byte 32'b0 yükleniyor", extra);
            $fflush();
            repeat(extra) begin
                send32(32'h0000_0000);
            end
        end

        $display("send_program bitti %d", extra + ProgSize);
        $fflush();
    endtask

    task automatic reset_system();
        sys_rst_n = 1'b0;
        #RESET_PERIOD
        sys_rst_n = 1'b1;
        RsRx = 1'b1;
    `ifndef USE_SRAM
        @(posedge u_dut.u_teknofest_memory.init_calib_complete);
        $display("Starting to write instructions to DDR");
    `else
        #1000ns;
    `endif
    endtask
    wire [31:0] gp = `YAZMAC_OBEGI.int_yazmac[3];
    wire [31:0] a0 = `YAZMAC_OBEGI.int_yazmac[10];
    wire [31:0] a7 = `YAZMAC_OBEGI.int_yazmac[17];

    function void read_line_count(input string filename, output int linecount);
        int c;
        string line_buffer;
        int fd;
        int zc;

        linecount = 0;
        zc = 0;
        fd = $fopen(filename, "r");
        if(fd == 0) begin
            $display("Satir sayici dosyayi acamadi!");
            $finish;
        end

        while(!$feof(fd)) begin
            c = $fgets(line_buffer, fd);
            //$display(line_buffer);
            if(c > 0) begin
                if(line_buffer != "00000000\n" && line_buffer != "\n") begin
                    linecount = linecount + 1;
                    if(zc > 0) begin
                        linecount = linecount + zc;
                        zc = 0;
                    end
                end else begin
                    zc = zc + 1;
                end
            end
        end
        linecount = linecount + zc;
        $fclose(fd);
    endfunction

    localparam BASE_ADDRESS = "/home/baseru/riscv-tests/isa/";
    `ifdef SPIKE_DIFF
    function string csr_adres_isim (input [11:0] csr_adres);
        case(csr_adres)
            `CSR_ADDR_FCSR: csr_adres_isim = "fcsr";
            `CSR_ADDR_FRM: csr_adres_isim = "frm";
            `CSR_ADDR_FFLAGS: csr_adres_isim = "fflags";

            `CSR_ADDR_MISA: csr_adres_isim = "misa";
            `CSR_ADDR_MSTATUS: csr_adres_isim = "mstatus";
            `CSR_ADDR_MSTATUSH: csr_adres_isim = "mstatush";
            `CSR_ADDR_MTVEC: csr_adres_isim = "mtvec";
            `CSR_ADDR_MIE: csr_adres_isim = "mie";

            `CSR_ADDR_MCYCLE: csr_adres_isim = "mcycle";
            `CSR_ADDR_MCYCLEH: csr_adres_isim = "mcycleh";
            `CSR_ADDR_MINSTRET: csr_adres_isim = "minstret";
            `CSR_ADDR_MINSTRETH: csr_adres_isim = "minstreth";
            `CSR_ADDR_MCOUNTINHIBIT: csr_adres_isim = "mcountinhibit";
            `CSR_ADDR_MSCRATCH: csr_adres_isim = "mscratch";
            `CSR_ADDR_MEPC: csr_adres_isim = "mepc";
            `CSR_ADDR_MCAUSE: csr_adres_isim = "mcause";
            `CSR_ADDR_MTVAL: csr_adres_isim = "mtval";
            default: csr_adres_isim = "hata";
        endcase
    endfunction

    function logic [31:0] csr_gercek_deger(input logic [11:0] adr);
        case(adr)
            `CSR_ADDR_FCSR: csr_gercek_deger = `CSR_MODULU.fcsr;
            `CSR_ADDR_FRM: csr_gercek_deger = `CSR_MODULU.frm;
            `CSR_ADDR_FFLAGS: csr_gercek_deger = `CSR_MODULU.fflags;

            `CSR_ADDR_MISA: csr_gercek_deger = {
            `CSR_MODULU.misa_mxl,
            `CSR_MODULU.misa_warl,
            `CSR_MODULU.misa_ext
            };
            `CSR_ADDR_MSTATUS: csr_gercek_deger ={
            `CSR_MODULU.sd,
            `CSR_MODULU.mstatus_wpri_h0, 6'b0,
            `CSR_MODULU.mstatus_xs, csr_pkg::fs_t_deger(`CSR_MODULU.fs),
            2'b0, 2'b0, 1'b0, 3'b0,
            `CSR_MODULU.mstatus_wpri_h1, 1'b0, `CSR_MODULU.mstatus_wpri_h2, 1'b0,
            `CSR_MODULU.mstatus_wpri_h3
            };
            `CSR_ADDR_MSTATUSH: csr_gercek_deger = {
            `CSR_MODULU.mstatush_wpri_0,
            1'b0,
            1'b0,
            `CSR_MODULU.mstatush_wpri_1
            };
            `CSR_ADDR_MTVEC: csr_gercek_deger = {
            `CSR_MODULU.mtvec_base,
            `CSR_MODULU.mtvec_mode
            };
            `CSR_ADDR_MIE: csr_gercek_deger = 0;

            `CSR_ADDR_MCYCLE: csr_gercek_deger = `CSR_MODULU.m_cycle[31:0];
            `CSR_ADDR_MCYCLEH: csr_gercek_deger = `CSR_MODULU.m_cycle[63:32];
            `CSR_ADDR_MINSTRET: csr_gercek_deger = `CSR_MODULU.m_instret[31:0];
            `CSR_ADDR_MINSTRETH: csr_gercek_deger = `CSR_MODULU.m_instret[63:32];
            `CSR_ADDR_MCOUNTINHIBIT: csr_gercek_deger = `CSR_MODULU.mcountinhibit;
            `CSR_ADDR_MSCRATCH: csr_gercek_deger = `CSR_MODULU.mscratch;
            `CSR_ADDR_MEPC: csr_gercek_deger = {`CSR_MODULU.mepc, 2'b00};
            `CSR_ADDR_MCAUSE: csr_gercek_deger = {
            `CSR_MODULU.mcause_int,
            `CSR_MODULU.mcause_ex_code
            };
            `CSR_ADDR_MTVAL: csr_gercek_deger = `CSR_MODULU.mtval;
            default: csr_gercek_deger = 32'h0;
        endcase
    endfunction : csr_gercek_deger

    function string reg_no_sola_dose(input int num);
        string s = $sformatf("%0d", num);
        string bos = " ";
        if(s.len() == 1)
            reg_no_sola_dose = {s, bos};
        else
            reg_no_sola_dose = s;
    endfunction

    function logic [31:0] gercek_adres_al(input logic [31:0] adres, logic [3:0] maske);
        case(maske)
            4'b0001: gercek_adres_al = adres;
            4'b0010: gercek_adres_al = adres+8;
            4'b0100: gercek_adres_al = adres+16;
            4'b1000: gercek_adres_al = adres+24;
            4'b0011: gercek_adres_al = adres;
            4'b1100: gercek_adres_al = adres+16;
            4'b1111: gercek_adres_al = adres;
            default: gercek_adres_al = adres;
        endcase
    endfunction : gercek_adres_al

    integer file_handle;
    localparam string SPIKE_DIFF_BASE = "core   0: 3 ";
    string message;
    string kullanilacak_reg;
    string yazmac_str;
    always @(posedge u_dut.yonga.clk_i) begin
        logic [6:0] aktif_modul;
        aktif_modul = {
        `YU_MODULU.debug_coz_yurut_i.amb_kontrol.amb_aktif,
        `YU_MODULU.debug_coz_yurut_i.abib_kontrol.abib_aktif,
        `YU_MODULU.debug_coz_yurut_i.muib_kontrol.muib_aktif,
        `YU_MODULU.debug_coz_yurut_i.csr_kontrol.csr_aktif,
        `YU_MODULU.debug_coz_yurut_i.dallanma_kontrol.branch_aktif,
        `YU_MODULU.debug_coz_yurut_i.os_kontrol.os_aktif,
        `YU_MODULU.debug_coz_yurut_i.olagan_disi.olagan_disi_durum
        };
        if(`GY_MODULU.instret_o) begin
            message = SPIKE_DIFF_BASE;
            message = {message, "0x%08x (0x%08x) "};
            kullanilacak_reg = reg_no_sola_dose(`YU_MODULU.debug_coz_yurut_i.sonuc1_hedef.islenec_adresi);
            yazmac_str = `YU_MODULU.debug_coz_yurut_i.sonuc1_hedef.yazma_hedefi == OS_yaz ? {"f", kullanilacak_reg, " "} : {"x", kullanilacak_reg, " "};
            message = $sformatf(message,
                `YU_MODULU.debug_coz_yurut_i.olagan_disi.mepc,
                `YU_MODULU.debug_yurut_buyruk_o);
            casex(aktif_modul)
                7'b1xxx0xx: begin
                    if(`YU_MODULU.debug_coz_yurut_i.sonuc1_hedef.islenec_adresi == 0 && `YU_MODULU.debug_coz_yurut_i.sonuc1_hedef.yazma_hedefi == TS_yaz) begin
                        message = {message, "\n"};

                    end else begin
                        message = {message, yazmac_str, "0x%08x\n"};
                        message = $sformatf(message,
                            `YU_MODULU.yurut_sonuc_o
                        );end
                end
                7'b01xxxxx: begin
                    if(`YU_MODULU.debug_coz_yurut_i.abib_kontrol.abib_islem != ABIB_AMO_MAXW ||
                    `YU_MODULU.debug_coz_yurut_i.abib_kontrol.abib_islem != ABIB_AMOADDW ||
                    `YU_MODULU.debug_coz_yurut_i.abib_kontrol.abib_islem != ABIB_AMOANDW ||
                    `YU_MODULU.debug_coz_yurut_i.abib_kontrol.abib_islem != ABIB_AMOMAXUW ||
                    `YU_MODULU.debug_coz_yurut_i.abib_kontrol.abib_islem != ABIB_AMOMINUW ||
                    `YU_MODULU.debug_coz_yurut_i.abib_kontrol.abib_islem != ABIB_AMOMINUW ||
                    `YU_MODULU.debug_coz_yurut_i.abib_kontrol.abib_islem != ABIB_AMOMINW ||
                    `YU_MODULU.debug_coz_yurut_i.abib_kontrol.abib_islem != ABIB_AMOORW ||
                    `YU_MODULU.debug_coz_yurut_i.abib_kontrol.abib_islem != ABIB_AMOSWAPW ||
                    `YU_MODULU.debug_coz_yurut_i.abib_kontrol.abib_islem != ABIB_AMOXORW
                    ) begin

                        case(`YU_MODULU.debug_coz_yurut_i.abib_kontrol.abib_islem)
                            ABIB_LB: begin
                                message = {message, yazmac_str, "0x%08x "};
                                message = {message, "mem 0x%08x\n"};
                                message = $sformatf(message,
                                    `YU_MODULU.yurut_sonuc_o,
                                    `YU_MODULU.debug_l1v_adres_o
                                );
                            end
                            ABIB_LBU: begin
                                message = {message, yazmac_str, "0x%08x "};
                                message = {message, "mem 0x%08x\n"};
                                message = $sformatf(message,
                                    `YU_MODULU.yurut_sonuc_o,
                                    `YU_MODULU.debug_l1v_adres_o
                                );
                            end
                            ABIB_LH: begin
                                message = {message, yazmac_str, "0x%08x "};
                                message = {message, "mem 0x%08x\n"};
                                message = $sformatf(message,
                                    `YU_MODULU.yurut_sonuc_o,
                                    `YU_MODULU.debug_l1v_adres_o
                                );
                            end
                            ABIB_LHU: begin
                                message = {message, yazmac_str, "0x%08x "};
                                message = {message, "mem 0x%08x\n"};
                                message = $sformatf(message,
                                    `YU_MODULU.yurut_sonuc_o,
                                    `YU_MODULU.debug_l1v_adres_o
                                );
                            end
                            ABIB_LW, ABIB_LRW: begin
                                message = {message, yazmac_str, "0x%08x "};
                                message = {message, "mem 0x%08x\n"};
                                message = $sformatf(message,
                                    `YU_MODULU.yurut_sonuc_o,
                                    `YU_MODULU.debug_l1v_adres_o
                                );
                            end
                            ABIB_SW, ABIB_SRW: begin
                                message = {message, "mem 0x%08x 0x%08x\n"};
                                message = $sformatf(message,
                                    `YU_MODULU.debug_l1v_adres_o,
                                    `YU_MODULU.debug_l1v_veri_o
                                );
                            end
                            ABIB_SH: begin
                                message = {message, "mem 0x%08x 0x%04x\n"};
                                message = $sformatf(message,
                                    `YU_MODULU.debug_l1v_adres_o,
                                    `YU_MODULU.debug_l1v_veri_o[15:0]
                                );
                            end
                            ABIB_SB: begin
                                message = {message, "mem 0x%08x 0x%02x\n"};
                                message = $sformatf(message,
                                    `YU_MODULU.debug_l1v_adres_o,
                                    `YU_MODULU.debug_l1v_veri_o[7:0]
                                );
                            end
                        endcase
                    end else begin
                        // AMO
                        message = {message, yazmac_str, "0x%08x "};
                        message = {message, "mem 0x%08x\n"};
                        message = $sformatf(message,
                            `YU_MODULU.debug_l1v_adres_o,
                            `YU_MODULU.debug_l1v_veri_o
                        );
                        message = {message, "mem 0x%08x 0x%08x\n"};
                        message = $sformatf(message,
                            `YU_MODULU.debug_l1v_adres_o,
                            `YU_MODULU.debug_l1v_veri_o
                        );
                    end
                end
                7'b001xxxx: begin
                    begin
                        message = {message, yazmac_str, "0x%08x\n"};
                        message = $sformatf(message,
                            `YU_MODULU.yurut_sonuc_o
                        );
                    end
                end
                7'b0001xxx: begin
                    logic [11:0] csr_adres = `GY_MODULU.csr_adres_o;
                    if(`GY_MODULU.csr_yaz_o) begin
                        message = {message, "c%3d_%s"};
                        message = $sformatf(message,
                            `GY_MODULU.csr_adres_o,
                            csr_adres_isim(`GY_MODULU.csr_adres_o)
                        );
                        @(posedge u_dut.yonga.clk_i);
                        message = {message, " 0x%08x\n"};
                        message = $sformatf(message,
                            csr_gercek_deger(csr_adres)
                        );
                    end else begin
                        message = {message, yazmac_str, "0x%08x\n"};
                        message = $sformatf(message,
                            `YU_MODULU.yurut_sonuc_o
                        );
                    end
                end
                7'bx0001xx: begin
                    message = {message, "\n"};
                    message = $sformatf(message);
                end
                7'b000001x: begin
                    message = {message, yazmac_str, "0x%08x\n"};
                    message = $sformatf(message,
                        `YU_MODULU.yurut_sonuc_o
                    );
                end
                default: begin
                    message = {message, "\n"};
                    message = $sformatf(message);
                end
            endcase
            $fwrite(file_handle, message);
            $fflush(file_handle);
        end
    end

    task static fh_birak(input integer fh);
        $fflush(fh);
        $fclose(fh);
    endtask
    `endif

    task static run_program_list(input string filename);
        int fd;
        string test_f;
        fd = $fopen(filename, "r");

        if(fd==0) begin
            $display("test programı listesi %s acilamadi! ", filename);
            $finish;
        end
        while(!$feof(fd)) begin
            automatic int char_count = $fgets(test_f, fd);
            int a;
            test_f = test_f.substr(0, char_count-2); //\n kaldır
            if(test_f[0] == 35) begin
                $display("%s atlanıyor", test_f);
                continue;
            end

            if(char_count < 5)
                continue;

            $display("test %s calistiriliyor...", test_f);
            read_line_count({BASE_ADDRESS,test_f}, a);
            load_program({BASE_ADDRESS,test_f}, a);

            file_handle = $fopen({BASE_ADDRESS,test_f, "-7-diff.log"}, "w");
            wait(a7 == 93);
            $fflush();

            if(a0 != 0) begin
                wait(a0 == 0);
            end

            if(gp == 1 && a0 == 0) begin
                $display("test %s basarili, gp: %d a0: %d", test_f, gp, a0);
                reset_system();
            end else begin
                $display("TEST HATALI GECTI!!!!!!! %s", test_f);
                $display("gp: %d, a0: %d", gp, a0);
                fh_birak(file_handle);
                $finish();
            end
            fh_birak(file_handle);
        end
        $fclose(fd);
        $display("TEST LISTESI %s BASARIYLA TAMAMLANDI!", filename);
        //$finish();
    endtask

    task automatic load_program(input string filename, input int progsize);
        $readmemh(filename, boot_program);
        ProgSize = progsize;
        send_prog_seq();
        send_program();
    endtask

    initial begin
        reset_system();
//        run_program_list({BASE_ADDRESS, "testlist-custom.txt"}); //custom

        //        run_program_list({BASE_ADDRESS, "testlist-rv32ui-p.txt"}); //I   +
        //        run_program_list({BASE_ADDRESS, "testlist-rv32um-p.txt"}); //M   +
        //        run_program_list({BASE_ADDRESS, "testlist-rv32ua-p.txt"}); //A   +
        //        run_program_list({BASE_ADDRESS, "testlist-rv32uzba-p.txt"}); //zba +
        //        run_program_list({BASE_ADDRESS, "testlist-rv32uzbb-p.txt"}); //zbb +
        //        run_program_list({BASE_ADDRESS, "testlist-rv32uzbc-p.txt"}); //zbc +
        //        run_program_list({BASE_ADDRESS, "testlist-rv32uzbs-p.txt"}); //zbs +
        //        run_program_list({BASE_ADDRESS, "testlist-rv32uf-p.txt"}); //F +
                run_program_list({BASE_ADDRESS, "testlist-rv32mi-p.txt"}); // M +
        $finish();
    end

endmodule
`default_nettype wire
