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

module tb_teknofest_wrapper #(
`ifdef USE_SRAM
   parameter int unsigned USE_SRAM = 1,
`else
   parameter int unsigned USE_SRAM = 0,
`endif
   parameter UART_BAUD_RATE = 5_000_000
) ();


   logic sys_rst_n, sys_clk_i, sys_clk_i_p, sys_clk_i_n;
   logic ram_prog_rx_i, tx_o;
   wire prog_mode_led_o;

`ifdef NEXYS7
   wire [15:0] ddr2_dq;
   wire [ 1:0] ddr2_dqs_n;
   wire [ 1:0] ddr2_dqs_p;
   wire [12:0] ddr2_addr;
   wire [ 2:0] ddr2_ba;
   wire        ddr2_ras_n;
   wire        ddr2_cas_n;
   wire        ddr2_we_n;
   wire        ddr2_reset_n;
   wire        ddr2_ck_p;
   wire        ddr2_ck_n;
   wire        ddr2_cke;
   wire        ddr2_cs_n;
   wire [ 1:0] ddr2_dm;
   wire        ddr2_odt;
`endif


`ifdef BASYS3
`ifndef USE_SRAM
   $display("BASYS3 does not support DDR interface");
   initial begin
      $finish;
   end
`endif
   localparam FPGA_PERIOD = 10;  // 100Mhz
   localparam WORKING_FREQ = 35_000_000;  // 25Mhz
   localparam DDR_FPGA_PERIOD = 0;
   localparam DDR_FREQ_HZ = 0;
`elsif VCU108
`ifndef USE_SRAM
   $display("VCU108 does not support DDR interface");
   initial begin
      $finish;
   end
`endif
   localparam FPGA_PERIOD = 3.33;  // 300Mhz
   localparam WORKING_FREQ = 75_000_000;  // 75Mhz
   localparam DDR_FPGA_PERIOD = 0;
   localparam DDR_FREQ_HZ = 0;
`elsif NEXYS7
   localparam FPGA_PERIOD = 10;  // 100MHz
   localparam WORKING_FREQ = 50_000_000;  // 50Mhz
   localparam DDR_FPGA_PERIOD = 5;  // 200Mhz       // the input freq of MIG
   localparam DDR_FREQ_HZ =
      200_000_000;  // 200Mhz       // the operating freq of DDR, WORKING_FREQ = DDR_FREQ_HZ / 4
`endif

   localparam CLKIN_PERIOD = USE_SRAM ? FPGA_PERIOD : DDR_FPGA_PERIOD;
   localparam RESET_PERIOD = 200;  //in pSec 

   teknofest_wrapper #(
      .USE_SRAM      (USE_SRAM),
      .UART_BAUD_RATE(UART_BAUD_RATE),
      .WORKING_FREQ  (WORKING_FREQ)
   ) u_dut (
      .sys_rst_n(sys_rst_n),
      .prog_mode_led_o(prog_mode_led_o),

`ifdef BASYS3
      .sys_clk_i  (sys_clk_i),
`elsif VCU108
      .sys_clk_i_p(sys_clk_i_p),
      .sys_clk_i_n(sys_clk_i_n),
`elsif NEXYS7
      .sys_clk_i  (sys_clk_i),
`endif

`ifndef USE_SRAM
`ifdef NEXYS7
      .ddr2_dq     (ddr2_dq),
      .ddr2_dqs_n  (ddr2_dqs_n),
      .ddr2_dqs_p  (ddr2_dqs_p),
      .ddr2_addr   (ddr2_addr),
      .ddr2_ba     (ddr2_ba),
      .ddr2_ras_n  (ddr2_ras_n),
      .ddr2_cas_n  (ddr2_cas_n),
      .ddr2_we_n   (ddr2_we_n),
      .ddr2_reset_n(ddr2_reset_n),
      .ddr2_ck_p   (ddr2_ck_p),
      .ddr2_ck_n   (ddr2_ck_n),
      .ddr2_cke    (ddr2_cke),
      .ddr2_cs_n   (ddr2_cs_n),
      .ddr2_dm     (ddr2_dm),
      .ddr2_odt    (ddr2_odt),
`endif
`endif
      .RsRx        (ram_prog_rx_i),
      .RsTx        (tx_o)
   );

   initial begin
      sys_rst_n = 1'b0;
      #RESET_PERIOD sys_rst_n = 1'b1;
   end

`ifdef BASYS3
   initial sys_clk_i = 1'b0;
   always sys_clk_i = #(CLKIN_PERIOD / 2.0) ~sys_clk_i;
`elsif VCU108
   initial begin
      sys_clk_i_p = 1'b1;
      sys_clk_i_n = 1'b0;
   end
   always begin
      #(CLKIN_PERIOD / 2.0) sys_clk_i_p = ~sys_clk_i_p;
      sys_clk_i_n = ~sys_clk_i_n;
   end
`elsif NEXYS7
   initial sys_clk_i = 1'b0;
   always sys_clk_i = #(CLKIN_PERIOD / 2.0) ~sys_clk_i;
`endif


`ifndef USE_SRAM
   genvar i;
   generate
`ifdef NEXYS7
      for (i = 0; i < 1; i = i + 1) begin : gen_dram
         ddr2_model u_comp_ddr2 (
            .ck     (ddr2_ck_p),
            .ck_n   (ddr2_ck_n),
            .cke    (ddr2_cke),
            .cs_n   (ddr2_cs_n),
            .ras_n  (ddr2_ras_n),
            .cas_n  (ddr2_cas_n),
            .we_n   (ddr2_we_n),
            .dm_rdqs(ddr2_dm[2*(i+1)-1:2*(i)]),
            .ba     (ddr2_ba),
            .addr   (ddr2_addr),
            .dq     (ddr2_dq[16*(i+1)-1:16*(i)]),
            .dqs    (ddr2_dqs_p[2*(i+1)-1:2*(i)]),
            .dqs_n  (ddr2_dqs_n[2*(i+1)-1:2*(i)]),
            .rdqs_n (),
            .odt    (ddr2_odt)
         );
      end
`endif
   endgenerate
`endif

   localparam c_BIT_PERIOD = 1000_000_000 / UART_BAUD_RATE;

   localparam ProgSize = 4;  // Number of 32 bits
   logic [31:0] boot_program[ProgSize-1:0];

   initial begin
      //    for(int i=0; i<ProgSize; i++) boot_program[i] = 32'(i);
      @(posedge sys_rst_n);
      @(negedge prog_mode_led_o);
      $readmemh("/home/baseru/Documents/GitHub/KASIRGA-TOPRAK/tests/dhrystone/dhrystone.hexgroup",
                u_dut.u_teknofest_memory.gen_sram.memory);
      #250000;
      send_test(.i_Data("a"));
      send_test(.i_Data("b"));
      send_test(.i_Data("c"));
      send_test(.i_Data("d"));
      send_test(.i_Data("e"));
      send_test(.i_Data("f"));
      send_test(.i_Data("g"));
      send_test(.i_Data("h"));
      send_test(.i_Data("i"));
      send_test(.i_Data("j"));
      send_test(.i_Data("k"));
      send_test(.i_Data("l"));
      send_test(.i_Data("m"));
      send_test(.i_Data("n"));
      send_test(.i_Data("o"));
   end

   task send_test;
      input [7:0] i_Data;
      integer ii;
      begin
         // Send Start Bit
         ram_prog_rx_i = 1'b0;
         #(17400);
         //#1000;

         // Send Data Byte
         for (ii = 0; ii < 8; ii = ii + 1) begin
            ram_prog_rx_i = i_Data[ii];
            #(17400);
         end

         // Send Stop Bit
         ram_prog_rx_i = 1'b1;
         #(17400);
         //$display("[%0t] Sent byte: 0x%x", $realtime, i_Data);
      end
   endtask  // UART_WRITE_BYTE


   task send_uart_data;
      input [7:0] i_Data;
      integer ii;
      begin
         // Send Start Bit
         ram_prog_rx_i = 1'b0;
         #(c_BIT_PERIOD);
         //#1000;

         // Send Data Byte
         for (ii = 0; ii < 8; ii = ii + 1) begin
            ram_prog_rx_i = i_Data[ii];
            #(c_BIT_PERIOD);
         end

         // Send Stop Bit
         ram_prog_rx_i = 1'b1;
         #(c_BIT_PERIOD);
         //$display("[%0t] Sent byte: 0x%x", $realtime, i_Data);
      end
   endtask  // UART_WRITE_BYTE

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
      logic [31:0] instr;
      send32(ProgSize);
      repeat (ProgSize) begin
         instr = boot_program[i];
         send32(instr);
         i = i + 1;
      end
   endtask

   initial begin
      ram_prog_rx_i = 1'b1;
      wait (u_dut.locked);
      if (USE_SRAM == 0) @(posedge u_dut.u_teknofest_memory.init_calib_complete);
      else #1000ns;
      $display("Starting to write instructions to DDR");
      send_prog_seq();
      send_program();
   end




endmodule
