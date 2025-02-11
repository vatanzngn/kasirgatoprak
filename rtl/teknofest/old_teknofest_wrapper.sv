`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:     TUBITAK - TUTEL
// Project:     TEKNOFEST CIP TASARIM YARISMASI
// Engineer:    -
// Version:     1.0
//*************************************************************************************************************************************************//
// Create Date: 
// Module Name: teknofest_wrapper
//
// Description: 
//
//*************************************************************************************************************************************************//
// Copyright 2024 TUTEL (IC Design and Training Laboratory - TUBITAK).
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
`include "sentez_tanimlari.vh"
`default_nettype wire
module old_teknofest_wrapper #(
    `ifdef USE_SRAM
    parameter USE_SRAM  = 1,
    parameter DDR_FREQ_HZ = /*3*/120_000_000, // sadece wrapperi bozmamak adina, sram kullanirken bu parametrenin waveformda olmasi bile hos degil
    `else
        parameter USE_SRAM  = 0,
        parameter DDR_FREQ_HZ = 300_000_000,
    `endif
    parameter UART_BAUD_RATE = 9600
)(
    // Related to DDR MIG
    input logic sys_rst_n,
    input logic clk, // TODO: SRAM kullan?rken bunu cpu clock olarak kullan, yoksa DDR ui_clk
    
    `ifndef USE_SRAM
        inout  [15:0] ddr2_dq,
        inout  [1:0]  ddr2_dqs_n,
        inout  [1:0]  ddr2_dqs_p,
        output [12:0] ddr2_addr,
        output [2:0]  ddr2_ba,
        output        ddr2_ras_n,
        output        ddr2_cas_n,
        output        ddr2_we_n,
        output        ddr2_reset_n,
        output        ddr2_ck_p,
        output        ddr2_ck_n,
        output        ddr2_cke,
        output        ddr2_cs_n,
        inout  [1:0]  ddr2_dm,
        output        ddr2_odt,
    `endif

    input logic RsRx,
    output logic RsTx
    `ifndef SIM
    ,
    output logic [15:0] led,
    //7seg
    output logic [6:0] seg,
    output logic dp,
    output logic [3:0] an
    `endif
);

    wire sys_clk_t;
    `ifndef REM_IP
    wire locked;
    clk_wiz_b3 inst(
        // Clock out ports  
        .clk_out1(sys_clk_t),
        // Status and control signals
        .reset(~sys_rst_n),
        .locked(locked),
        // Clock in ports
        .clk_in1(clk)
    );

    wire sys_rst_t = sys_rst_n & locked;
    `else
    assign sys_clk_t = clk;
    wire sys_rst_t = sys_rst_n;
    `endif
    localparam CPU_FREQ_HZ = DDR_FREQ_HZ / 4; // MIG is configured 1:4

    typedef struct packed {
        logic         req;
        logic         gnt;
        logic         we;
        logic [31:0]  addr;
        logic [127:0] wdata;
        logic [15:0]  wstrb;
        logic [127:0] rdata;
        logic         rvalid;
    } mem_t;

    mem_t core_mem, programmer_mem, sel_mem;

    logic system_reset_n;
    logic programmer_active;

    logic ui_clk, ui_rst_n;
    generate
    `ifdef USE_SRAM
        assign ui_clk = 0;
        assign ui_rst_n = 0;
    `endif
    endgenerate

    wire core_clk = USE_SRAM ? sys_clk_t : ui_clk;
    wire core_rst_n = system_reset_n && (USE_SRAM ? sys_rst_t : ui_rst_n);

    wire ram_prog_rx = (core_rst_n) ? 1 : RsRx;
    wire uart_rx = (core_rst_n) ? RsRx : 1;
    wire uart_tx;
    wire [31:0] ps;
    assign RsTx = uart_tx;

    yonga yonga(
        .clk_i(core_clk),
        .rstn_i(core_rst_n),
        // bellek
        .mem_addr_o(core_mem.addr),
        .mem_req_o(core_mem.req),
        .mem_wdata_o(core_mem.wdata),
        .mem_wstrb_o(core_mem.wstrb),
        .mem_we_o(core_mem.we),
        .mem_rdata_i(core_mem.rdata ),
        .mem_rvalid_i( core_mem.rvalid ),
        .mem_gnt_i(core_mem.gnt),

        .uart_rx_i(uart_rx),
        .uart_tx_o(uart_tx),
        .ps_o(ps)
    );

    wire [2:0] state;
    wire [3:0] rcv_sq;
    wire [7:0] buf_data;

    programmer #(
        .UART_BAUD_RATE(UART_BAUD_RATE),
        .CPU_FREQ_HZ   (CPU_FREQ_HZ)
    )u_programmer (
        .clk                    (sys_clk_t), // eski hali: (core_clk)
        .rst_n                  (sys_rst_t), // eski hali: (core_rst_n)
        .mem_req                (programmer_mem.req),
        .mem_we                 (programmer_mem.we),
        .mem_addr               (programmer_mem.addr),
        .mem_wdata              (programmer_mem.wdata),
        .mem_wstrb              (programmer_mem.wstrb),
        .mem_gnt                (programmer_mem.gnt),
        .ram_prog_rx_i          (ram_prog_rx),
        .system_reset_no        (system_reset_n),
        .programming_state_on   (programmer_active)//,
        //.state_prog_d_o         (state),
        //.rcv_sq_ctr_d_o         (rcv_sq),
        //.buf_data_d_o           (buf_data)
    );

    assign sel_mem.req   = programmer_active ? programmer_mem.req   : core_mem.req;
    assign sel_mem.we    = programmer_active ? programmer_mem.we    : core_mem.we;
    assign sel_mem.addr  = programmer_active ? programmer_mem.addr  : core_mem.addr;
    assign sel_mem.wdata = programmer_active ? programmer_mem.wdata : core_mem.wdata;
    assign sel_mem.wstrb = programmer_active ? programmer_mem.wstrb : core_mem.wstrb;

    assign programmer_mem.rvalid = 1'b0;
    assign programmer_mem.rdata  = '0;
    assign programmer_mem.gnt    = programmer_active && sel_mem.gnt;

    assign core_mem.rvalid = ~programmer_active && sel_mem.rvalid;
    assign core_mem.rdata  = {128{~programmer_active}} & sel_mem.rdata;
    assign core_mem.gnt    = ~programmer_active && sel_mem.gnt; // eski hali: programmer_active && sel_mem.gnt

    teknofest_memory #(
        .USE_SRAM   (USE_SRAM),
        .MEM_DEPTH  (8192)
    )u_teknofest_memory(
        .clk_i  (sys_clk_t),
        .rst_ni (sys_rst_t),
        .req    (sel_mem.req   ),
        .gnt    (sel_mem.gnt   ),
        .we     (sel_mem.we    ),
        .addr   (sel_mem.addr  ),
        .wdata  (sel_mem.wdata ),
        .wstrb  (sel_mem.wstrb ),
        .rdata  (sel_mem.rdata ),
        .rvalid (sel_mem.rvalid)
        `ifndef USE_SRAM
        ,
            .sys_rst (sys_rst_t),
            .sys_clk(sys_clk_t),
            .ui_clk,
            .ui_rst_n,
            .ddr2_dq,     
            .ddr2_dqs_n,  
            .ddr2_dqs_p,  
            .ddr2_addr,   
            .ddr2_ba,     
            .ddr2_ras_n,  
            .ddr2_cas_n,  
            .ddr2_we_n,   
            .ddr2_reset_n,
            .ddr2_ck_p,   
            .ddr2_ck_n,   
            .ddr2_cke,    
            .ddr2_cs_n,   
            .ddr2_dm,     
            .ddr2_odt    
        `endif
    );
    
    `ifndef SIM
    assign led[15] = ram_prog_rx;
    assign led[14] = programmer_active;
    assign led[13] = core_rst_n;
    assign led[12] = system_reset_n;

    assign led[11] = uart_rx;
    assign led[10] = uart_tx;

    assign led[9:8] = ps[31:30];
    assign led[7:0] = ps[7:0];

    SevenSegmentDisplay ssd(
        .clk(sys_clk_t),
        .in({buf_data[7:4],buf_data[3:0],rcv_sq, state}),
        .seg(seg),
        .dp(dp),
        .an(an)
    );
    `endif
endmodule
