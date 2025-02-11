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

module teknofest_wrapper #(
`ifdef USE_SRAM
    parameter int unsigned USE_SRAM = 1,
`else
    parameter int unsigned USE_SRAM = 0,
`endif
`ifdef BASYS3
    parameter WORKING_FREQ = 35_000_000,   // 39Mhz     // output freq of clk_wiz
`elsif VCU108
    parameter WORKING_FREQ = 75_000_000,   // 75Mhz
`elsif NEXYS7
    parameter WORKING_FREQ = 50_000_000,   // 50Mhz     // the operating freq of DDR is 400Mhz, WORKING_FREQ = DDR_FREQ_HZ / 4
`endif
    parameter UART_BAUD_RATE = 57600
)(
    // Related to DDR MIG
    input logic sys_rst_n,
    output logic prog_mode_led_o,

`ifdef BASYS3
    input logic sys_clk_i,
`elsif VCU108
    input logic sys_clk_i_p,
    input logic sys_clk_i_n,
`elsif NEXYS7
    input logic sys_clk_i,
`endif
  
`ifndef USE_SRAM
    `ifdef NEXYS7
        inout  [15:0]       ddr2_dq,
        inout  [1:0]        ddr2_dqs_n,
        inout  [1:0]        ddr2_dqs_p,
        output [12:0]       ddr2_addr,
        output [2:0]        ddr2_ba,
        output              ddr2_ras_n,
        output              ddr2_cas_n,
        output              ddr2_we_n,
        output              ddr2_reset_n,
        output              ddr2_ck_p,
        output              ddr2_ck_n,
        output              ddr2_cke,
        output              ddr2_cs_n,
        inout  [1:0]        ddr2_dm,
        output              ddr2_odt,
    `endif
`endif   
    input logic RsRx,
    output logic RsTx
);

    localparam CPU_FREQ_HZ = WORKING_FREQ; // MIG is configured 1:4

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
    
    assign prog_mode_led_o = programmer_active;

    wire sys_clk;
    wire locked;
    
    wire core_clk = USE_SRAM ? sys_clk : ui_clk;
    wire core_rst_n = system_reset_n && (USE_SRAM ? (sys_rst_n && locked) : ui_rst_n);
    
    wire ram_prog_rx = (core_rst_n) ? 1 : RsRx;
    wire uart_rx = (core_rst_n) ? RsRx : 1;
    wire uart_tx;
    wire [31:0] ps;
    assign RsTx = uart_tx;
    
    // Core'u burada cagirin. core_mem struct'?n? ba?lay?n.
    // core_clk ve core_rst_n sinyallerini baglamayi unutmayin.
//    assign core_mem.req = 1'b0;
//    assign core_mem.we  = 1'b0;
//    assign core_mem.addr = '0;
//    assign core_mem.wdata = '0;
//    assign core_mem.wstrb = '0;

(* keep_hierarchy = "yes" *)
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
    
`ifdef USE_SRAM
    `ifdef BASYS3
        clk_wiz_basys3 sa (                 // 25 MHz
            .clk_in1        (sys_clk_i),
            .clk_out1       (sys_clk),
            .reset          (~sys_rst_n),
            .locked         (locked)
        );
    `elsif VCU108
        clk_wiz_vcu108 as (                 // 75 MHz
            .clk_in1_p      (sys_clk_i_p),
            .clk_in1_n      (sys_clk_i_n),
            .clk_out1       (sys_clk),     
            .reset          (~sys_rst_n),
            .locked         (locked)      
        );
    `elsif NEXYS7
        clk_wiz_nexys7 sa (                 // 50 MHz
            .clk_in1        (sys_clk_i),
            .clk_out1       (sys_clk),
            .reset          (~sys_rst_n),
            .locked         (locked)
        );
    `endif
`else
    assign locked = 1'b1;
`endif
    
    programmer #(
        .UART_BAUD_RATE(UART_BAUD_RATE),
        .CPU_FREQ_HZ   (CPU_FREQ_HZ)
    )u_programmer (
        .clk                    (core_clk),
        .rst_n                  ((USE_SRAM ? (sys_rst_n && locked) : ui_rst_n)),
        .mem_req                (programmer_mem.req),
        .mem_we                 (programmer_mem.we),
        .mem_addr               (programmer_mem.addr),
        .mem_wdata              (programmer_mem.wdata),
        .mem_wstrb              (programmer_mem.wstrb),
        .ram_prog_rx_i          (ram_prog_rx),
        .system_reset_no        (system_reset_n),
        .programming_state_on   (programmer_active)
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
        .clk_i  (sys_clk),
        .rst_ni (sys_rst_n && locked),
        .req    (sel_mem.req   ),
        .gnt    (sel_mem.gnt   ),
        .we     (sel_mem.we    ),
        .addr   (sel_mem.addr  ),
        .wdata  (sel_mem.wdata ),
        .wstrb  (sel_mem.wstrb ),
        .rdata  (sel_mem.rdata ),
        .rvalid (sel_mem.rvalid),
        .sys_rst (sys_rst_n),
    `ifndef USE_SRAM
        `ifdef NEXYS7
            .sys_clk                   (sys_clk_i),
            .ddr2_dq                   (ddr2_dq),     
            .ddr2_dqs_n                (ddr2_dqs_n),  
            .ddr2_dqs_p                (ddr2_dqs_p),  
            .ddr2_addr                 (ddr2_addr),   
            .ddr2_ba                   (ddr2_ba),     
            .ddr2_ras_n                (ddr2_ras_n),  
            .ddr2_cas_n                (ddr2_cas_n),  
            .ddr2_we_n                 (ddr2_we_n),   
            .ddr2_reset_n              (ddr2_reset_n),
            .ddr2_ck_p                 (ddr2_ck_p),   
            .ddr2_ck_n                 (ddr2_ck_n),   
            .ddr2_cke                  (ddr2_cke),    
            .ddr2_cs_n                 (ddr2_cs_n),   
            .ddr2_dm                   (ddr2_dm),
            .ddr2_odt                  (ddr2_odt),     
        `endif
    `endif   
        .ui_clk,
        .ui_rst_n
    );
    

endmodule
