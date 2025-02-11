// Kasırga - Toprak UOP

// OPCODE
`define Iext_ILoad_Tipi 4'd0 
`define Iext_IAmb_Tipi 4'd1
`define Iext_Store_Tipi 4'd2
`define Iext_RAmb_Tipi 4'd3
`define Iext_Branc_Tipi 4'd4
`define Iext_J_JAL_OP 4'd5
`define Iext_U_AUIPC_OP 4'd6
`define Iext_U_LUI_OP 4'd7
`define Iext_I_JALR_OP 4'd8
`define Mext_R_Tipi 4'd9
`define Fext_Tipi 4'd10
`define NOP_ic 4'd11
`define Aext_R_Tipi 4'd12
`define Bext_R_Tipi 4'd13 // implement edilmedi cozde 
`define Iext_System 4'd14

/*ABIB UOPS*/
`define UOP_LB 9'b1_001_000_10
`define UOP_LH 9'b1_001_000_01
`define UOP_LW 9'b1_001_000_00
`define UOP_LBU 9'b1_010_000_10
`define UOP_LHU 9'b1_010_000_01

`define UOP_SB 9'b1_011_000_10
`define UOP_SH 9'b1_011_000_01
`define UOP_SW 9'b1_011_000_00

// Reserved S/L
`define UOP_LRW 9'b0_010_000_00 
`define UOP_SRW 9'b0_010_000_01
// AMO
`define UOP_AMO_SWAPW 9'b0_001_000_00
`define UOP_AMO_ADDW 9'b0_001_000_01
`define UOP_AMO_XORW 9'b0_001_000_10 
`define UOP_AMO_ANDW 9'b0_001_000_11
`define UOP_AMO_ORW 9'b0_001_001_00 
`define UOP_AMO_MINW 9'b0_001_001_01
`define UOP_AMO_MAXW 9'b0_001_001_10 
`define UOP_AMO_MINUW 9'b0_001_001_11
`define UOP_AMO_MAXUW 9'b0_001_010_00

// AMB
`define UOP_AMB_AND 4'd0 
`define UOP_AMB_OR 4'd1
`define UOP_AMB_XOR 4'd2 
`define UOP_AMB_SLL 4'd3 
`define UOP_AMB_SRL 4'd4 
`define UOP_AMB_SRA 4'd5 
`define UOP_AMB_SLT 4'd6 
`define UOP_AMB_SLTU 4'd7  
`define UOP_AMB_ADD 4'd8 
`define UOP_AMB_SUB 4'd9


// Carp/Bol
`define UOP_CB_MUL 3'd0;
`define UOP_CB_MULH 3'd1;
`define UOP_CB_MULHSU 3'd2;
`define UOP_CB_MULHU 3'd3;
`define UOP_CB_DIV 3'd4;
`define UOP_CB_DIVU 3'd5;
`define UOP_CB_REM 3'd6;
`define UOP_CB_REMU 3'd7;

`define KULLANILMAYACAK 0

