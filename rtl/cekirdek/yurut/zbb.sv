import yurut_pkg::*;
module zbb (
   input wire [31:0] rs1_i,
   input wire [31:0] rs2_i,
   input amb_islem_t islem_i,
   output wire [31:0] rd_o
);

   reg [31:0] rd_cmb;

   assign rd_o = rd_cmb;

   always_comb begin
      case (islem_i)
         ZBB_CLZ: rd_cmb = clz(rs1_i);
         ZBB_CPOP: rd_cmb = cpop(rs1_i);
         ZBB_MAX: rd_cmb = ($signed(rs1_i) < $signed(rs2_i)) ? rs2_i : rs1_i;
         ZBB_MAXU: rd_cmb = ((rs1_i) < (rs2_i)) ? rs2_i : rs1_i;
         ZBB_MIN: rd_cmb = ($signed(rs1_i) < $signed(rs2_i)) ? rs1_i : rs2_i;
         ZBB_MINU: rd_cmb = ((rs1_i) < (rs2_i)) ? rs1_i : rs2_i;
         ZBB_ORCB:
         rd_cmb = {
            {(8) {|rs1_i[31:24]}}, {(8) {|rs1_i[23:16]}}, {(8) {|rs1_i[15:8]}}, {(8) {|rs1_i[7:0]}}
         };
         ZBB_ORN: rd_cmb = rs1_i | ~rs2_i;
         ZBB_REV8: rd_cmb = {rs1_i[7:0], rs1_i[15:8], rs1_i[23:16], rs1_i[31:24]};
         ZBB_ROL: rd_cmb = (rs1_i << rs2_i[4:0]) | (rs1_i >> (32 - rs2_i[4:0]));
         ZBB_ROR: rd_cmb = (rs1_i >> rs2_i[4:0]) | (rs1_i << (32 - rs2_i[4:0]));
         ZBB_SEXTB: rd_cmb = {{24{rs1_i[7]}}, rs1_i[7:0]};
         ZBB_SEXTH: rd_cmb = {{16{rs1_i[15]}}, rs1_i[15:0]};
         ZBB_XNOR: rd_cmb = ~(rs1_i ^ rs2_i);
         ZBB_ZEXTH: rd_cmb = {16'b0, rs1_i[15:0]};
         ZBB_ANDN: rd_cmb = rs1_i & ~rs2_i;
         ZBB_CTZ: rd_cmb = clz({<<{rs1_i}});
         default: rd_cmb = 32'b0;
      endcase
   end

   function [5:0] clz(input logic [31:0] rs);

      casex (rs)
         32'b1xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: clz = 0;
         32'b01xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: clz = 1;
         32'b001xxxxxxxxxxxxxxxxxxxxxxxxxxxxx: clz = 2;
         32'b0001xxxxxxxxxxxxxxxxxxxxxxxxxxxx: clz = 3;
         32'b00001xxxxxxxxxxxxxxxxxxxxxxxxxxx: clz = 4;
         32'b000001xxxxxxxxxxxxxxxxxxxxxxxxxx: clz = 5;
         32'b0000001xxxxxxxxxxxxxxxxxxxxxxxxx: clz = 6;
         32'b00000001xxxxxxxxxxxxxxxxxxxxxxxx: clz = 7;
         32'b000000001xxxxxxxxxxxxxxxxxxxxxxx: clz = 8;
         32'b0000000001xxxxxxxxxxxxxxxxxxxxxx: clz = 9;
         32'b00000000001xxxxxxxxxxxxxxxxxxxxx: clz = 10;
         32'b000000000001xxxxxxxxxxxxxxxxxxxx: clz = 11;
         32'b0000000000001xxxxxxxxxxxxxxxxxxx: clz = 12;
         32'b00000000000001xxxxxxxxxxxxxxxxxx: clz = 13;
         32'b000000000000001xxxxxxxxxxxxxxxxx: clz = 14;
         32'b0000000000000001xxxxxxxxxxxxxxxx: clz = 15;
         32'b00000000000000001xxxxxxxxxxxxxxx: clz = 16;
         32'b000000000000000001xxxxxxxxxxxxxx: clz = 17;
         32'b0000000000000000001xxxxxxxxxxxxx: clz = 18;
         32'b00000000000000000001xxxxxxxxxxxx: clz = 19;
         32'b000000000000000000001xxxxxxxxxxx: clz = 20;
         32'b0000000000000000000001xxxxxxxxxx: clz = 21;
         32'b00000000000000000000001xxxxxxxxx: clz = 22;
         32'b000000000000000000000001xxxxxxxx: clz = 23;
         32'b0000000000000000000000001xxxxxxx: clz = 24;
         32'b00000000000000000000000001xxxxxx: clz = 25;
         32'b000000000000000000000000001xxxxx: clz = 26;
         32'b0000000000000000000000000001xxxx: clz = 27;
         32'b00000000000000000000000000001xxx: clz = 28;
         32'b000000000000000000000000000001xx: clz = 29;
         32'b0000000000000000000000000000001x: clz = 30;
         32'b00000000000000000000000000000001: clz = 31;
         32'b00000000000000000000000000000000: clz = 32;
         default: clz = 32;  // Buna gelmemeli
      endcase

   endfunction

   function [31:0] cpop(input logic [31:0] value);
      integer i;
      begin
         cpop = 0;
         for (i = 0; i < 32; i = i + 1) if (value[i]) cpop = cpop + 1;
      end
   endfunction

endmodule
