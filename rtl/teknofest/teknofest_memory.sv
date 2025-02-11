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
module teknofest_memory #(
   parameter USE_SRAM  = 1,
   parameter MEM_DEPTH = 16  // Only valid for SRAM
) (
   input  logic         clk_i,
   input  logic         rst_ni,
   // Memory interface between the core and memory
   input  logic         req,
   output logic         gnt,
   input  logic         we,
   input  logic [ 31:0] addr,
   input  logic [127:0] wdata,
   input  logic [ 15:0] wstrb,
   output logic [127:0] rdata,
   output logic         rvalid,

   // Related to DDR MIG
   input logic sys_rst,

`ifndef USE_SRAM
`ifdef NEXYS7
   input  logic        sys_clk,
   inout        [15:0] ddr2_dq,
   inout        [ 1:0] ddr2_dqs_n,
   inout        [ 1:0] ddr2_dqs_p,
   output       [12:0] ddr2_addr,
   output       [ 2:0] ddr2_ba,
   output              ddr2_ras_n,
   output              ddr2_cas_n,
   output              ddr2_we_n,
   output              ddr2_reset_n,
   output              ddr2_ck_p,
   output              ddr2_ck_n,
   output              ddr2_cke,
   output              ddr2_cs_n,
   inout        [ 1:0] ddr2_dm,
   output              ddr2_odt,
`endif
`endif
   output logic        ui_clk,
   output logic        ui_rst_n
);
   wire         sys_clk_i = 0;
   wire         clk_ref_i = 0;
   wire [ 26:0] app_addr = USE_SRAM ? addr[30:4] : (addr[27:4] << 3);
   wire [  2:0] app_cmd = ~we ? (3'b001) : (wstrb != 16'hFFFF ? 3'b001 : 3'b000);
   wire         app_en = req;
   wire [127:0] app_wdf_data = wdata;
   wire         app_wdf_end = req && we;
   wire [ 15:0] app_wdf_mask = ~wstrb;
   wire         app_wdf_wren = req && we;

   wire [127:0] app_rd_data;
   wire         app_rd_data_valid;
   wire         app_rd_data_end;
   wire         app_wdf_rdy;
   wire         app_rdy;

   wire         app_sr_req = 1'b0;
   wire         app_ref_req = 1'b0;
   wire         app_zq_req = 1'b0;
   wire         app_sr_active;
   wire         app_ref_ack;
   wire         app_zq_ack;

   wire         ui_clk_sync_rst;
   wire         init_calib_complete;
   assign ui_rst_n = ~ui_clk_sync_rst && init_calib_complete;

   generate
      if (USE_SRAM == 1) begin : gen_sram
         localparam ADDR_W = $clog2(MEM_DEPTH);
         logic [127:0] memory[MEM_DEPTH-1:0];

         always_ff @(posedge clk_i) begin
            if (req && we) begin
               for (int i = 0; i < 16; i++) begin
                  if (wstrb[i]) memory[addr[4+:ADDR_W]][i*8+:8] <= wdata[i*8+:8];
               end
            end
            else if (req && ~we) begin
               rdata <= memory[addr[4+:ADDR_W]];
            end
         end

         always_ff @(posedge clk_i or negedge rst_ni) begin
            if (~rst_ni) begin
               rvalid <= 1'b0;
               gnt <= 1'b0;
            end
            else begin
               rvalid <= req && ~we && gnt;
               gnt <= req;
            end
         end

         //assign gnt = 1'b1;

         assign init_calib_complete = 1'b1;

      end
      else begin : gen_ddr
`ifndef USE_SRAM
         assign rdata = app_rd_data;
         assign rvalid = app_rd_data_valid;
         assign gnt = (we ? (app_wdf_rdy && app_rdy) : app_rdy && app_rd_data_valid) && app_en &&
            init_calib_complete;

`ifdef NEXYS7
         mig_ddr2_nexys7 ddr2_mig (
            .ddr2_addr          (ddr2_addr),            // output [13:0]    ddr2_addr
            .ddr2_ba            (ddr2_ba),              // output [2:0]     ddr2_ba
            .ddr2_cas_n         (ddr2_cas_n),           // output           ddr2_cas_n
            .ddr2_ck_n          (ddr2_ck_n),            // output [0:0]     ddr2_ck_n
            .ddr2_ck_p          (ddr2_ck_p),            // output [0:0]     ddr2_ck_p
            .ddr2_cke           (ddr2_cke),             // output [0:0]     ddr2_cke
            .ddr2_ras_n         (ddr2_ras_n),           // output           ddr2_ras_n
            .ddr2_we_n          (ddr2_we_n),            // output           ddr2_we_n
            .ddr2_dq            (ddr2_dq),              // inout [15:0]     ddr2_dq
            .ddr2_dqs_n         (ddr2_dqs_n),           // inout [1:0]      ddr2_dqs_n
            .ddr2_dqs_p         (ddr2_dqs_p),           // inout [1:0]      ddr2_dqs_p
            .init_calib_complete(init_calib_complete),  // output           init_calib_complete
            .ddr2_cs_n          (ddr2_cs_n),            // output [0:0]     ddr2_cs_n
            .ddr2_dm            (ddr2_dm),              // output [1:0]     ddr2_dm
            .ddr2_odt           (ddr2_odt),             // output [0:0]     ddr2_odt
            .app_addr           (app_addr),             // input [27:0]     app_addr
            .app_cmd            (app_cmd),              // input [2:0]      app_cmd
            .app_en             (app_en),               // input            app_en
            .app_wdf_data       (app_wdf_data),         // input [127:0]    app_wdf_data
            .app_wdf_end        (app_wdf_end),          // input            app_wdf_end
            .app_wdf_wren       (app_wdf_wren),         // input            app_wdf_wren
            .app_rd_data        (app_rd_data),          // output [127:0]   app_rd_data
            .app_rd_data_end    (app_rd_data_end),      // output           app_rd_data_end
            .app_rd_data_valid  (app_rd_data_valid),    // output           app_rd_data_valid
            .app_rdy            (app_rdy),              // output           app_rdy
            .app_wdf_rdy        (app_wdf_rdy),          // output           app_wdf_rdy
            .app_sr_req         (app_sr_req),           // input            app_sr_req
            .app_ref_req        (app_ref_req),          // input            app_ref_req
            .app_zq_req         (app_zq_req),           // input            app_zq_req
            .app_sr_active      (app_sr_active),        // output           app_sr_active
            .app_ref_ack        (app_ref_ack),          // output           app_ref_ack
            .app_zq_ack         (app_zq_ack),           // output           app_zq_ack
            .ui_clk             (ui_clk),               // output           ui_clk
            .ui_clk_sync_rst    (ui_clk_sync_rst),      // output           ui_clk_sync_rst
            .app_wdf_mask       (app_wdf_mask),         // input [15:0]     app_wdf_mask
            .sys_clk_i          (sys_clk),
            .sys_rst            (sys_rst)
         );
`endif
`endif
      end
   endgenerate

endmodule
