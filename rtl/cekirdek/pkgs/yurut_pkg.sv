import fpnew_pkg::*;
package yurut_pkg;
   typedef enum logic [6:0] {
      AMB_AND,
      AMB_OR,
      AMB_XOR,
      AMB_SLL,
      AMB_SRL,
      AMB_SRA,
      AMB_SLT,
      AMB_SLTU,
      AMB_ADD,
      AMB_SUB,
      ZBB_ANDN,
      ZBC_CLMUL,
      ZBC_CLMULH,
      ZBC_CLMULR,
      ZBB_CLZ,
      ZBB_CPOP,
      ZBB_CTZ,
      ZBB_MAX,
      ZBB_MAXU,
      ZBB_MIN,
      ZBB_MINU,
      ZBB_ORCB,
      ZBB_ORN,
      ZBB_REV8,
      ZBB_ROL,
      ZBB_ROR,
      ZBS_BCLR,
      ZBS_BEXT,
      ZBS_BINV,
      ZBS_BSET,
      ZBB_SEXTB,
      ZBB_SEXTH,
      ZBA_SH1ADD,
      ZBA_SH2ADD,
      ZBA_SH3ADD,
      ZBB_XNOR,
      ZBB_ZEXTH
   } amb_islem_t;

   typedef enum logic [4:0] {
      ABIB_LB,
      ABIB_LH,
      ABIB_LW,
      ABIB_LBU,
      ABIB_LHU,
      ABIB_SB,
      ABIB_SH,
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
      ABIB_AMOMAXUW
   } abib_islem_t;

   typedef enum logic [3:0] {
      MUIB_MUL,
      MUIB_MULH,
      MUIB_MULHSU,
      MUIB_MULHU,
      MUIB_DIV,
      MUIB_DIVU,
      MUIB_REM,
      MUIB_REMU
   } muib_islem_t;

   typedef enum logic [2:0] {
      CSR_RW,
      CSR_RS,
      CSR_RC,
      CSR_RWI,
      CSR_RSI,
      CSR_RCI
   } csr_islem_t;

   typedef enum logic [2:0] {
      DB_BEQ,
      DB_BNE,
      DB_BLT,
      DB_BGE,
      DB_BLTU,
      DB_BGEU
   } dallanma_islem_t;

   typedef enum logic [5:0] {
      OS_FLW,
      OS_FSW,
      OS_FMADD,
      OS_FMSUB,
      OS_FNMSUB,
      OS_FNMADD,
      OS_FADD,
      OS_FSUB,
      OS_FMUL,
      OS_FDIV,
      OS_FSQRT,
      OS_FSGNJ,
      OS_FSGNJN,
      OS_FSGNJX,
      OS_FMIN,
      OS_FMAX,
      OS_FCVT_W_S,
      OS_FCVT_WU_S,
      OS_FMV_X,
      OS_FEQ,
      OS_FLT,
      OS_FLE,
      OS_FCLASS,
      OS_FCVT_S_W,
      OS_FCVT_S_WU,
      OS_FMV_W
   } os_islem_t;

   typedef enum logic [2:0] {
      OS_RNE,
      OS_RTZ,
      OS_RDN,
      OS_RUP,
      OS_RMM,
      OS_INV1,
      OS_INV2,
      OS_DYN
   } os_rm_t;

   // os_rm_t -> rounding mode
   function static [2:0] rm_li(input os_rm_t rm);
      case (rm)
         OS_RNE:  rm_li = 3'b000;
         OS_RTZ:  rm_li = 3'b001;
         OS_RDN:  rm_li = 3'b010;
         OS_RUP:  rm_li = 3'b011;
         OS_RMM:  rm_li = 3'b100;
         OS_INV1: rm_li = 3'b101;
         OS_INV2: rm_li = 3'b110;
         OS_DYN:  rm_li = 3'b111;
         default: rm_li = 3'b000;
      endcase
   endfunction : rm_li

   // rm_li -> os_rm_t
   function static os_rm_t rm_il(input logic [2:0] rm);
      case (rm)
         3'b000:  rm_il = OS_RNE;
         3'b001:  rm_il = OS_RTZ;
         3'b010:  rm_il = OS_RDN;
         3'b011:  rm_il = OS_RUP;
         3'b100:  rm_il = OS_RMM;
         3'b101:  rm_il = OS_INV1;
         3'b110:  rm_il = OS_INV2;
         3'b111:  rm_il = OS_DYN;
         default: rm_il = OS_RNE;
      endcase
   endfunction : rm_il

   // CVFPU parametreleri
   localparam fpnew_pkg::fpu_features_t CVFPUFeatures = fpnew_pkg::RV32F;

   localparam fpnew_pkg::fpu_implementation_t CVFPUImplementation = '{
      PipeRegs: '{
         '{4, 0, 0, 0, 0},  // ADDMUL
         '{default: unsigned'(16)},  // DIVSQRT
         '{default: 2},  // NONCOMP
         '{default: 5}
      },  // CONV
      UnitTypes: '{
         '{default: fpnew_pkg::PARALLEL},  // ADDMUL
         '{default: fpnew_pkg::MERGED},  // DIVSQRT
         '{default: fpnew_pkg::PARALLEL},  // NONCOMP
         '{default: fpnew_pkg::MERGED}
      },  // CONV
      PipeConfig: fpnew_pkg::DISTRIBUTED
   };
   localparam type CVFPUTagType = logic;

   // CVFPU <--> yurut_pkg donusumleri

   // CVFPU roundmode <--> yurut_pkg rm donusumleri
   function static fpnew_pkg::roundmode_e rm_to_cv(input os_rm_t rm);
      case (rm)
         OS_RNE:  rm_to_cv = fpnew_pkg::RNE;
         OS_RTZ:  rm_to_cv = fpnew_pkg::RTZ;
         OS_RDN:  rm_to_cv = fpnew_pkg::RDN;
         OS_RUP:  rm_to_cv = fpnew_pkg::RUP;
         OS_RMM:  rm_to_cv = fpnew_pkg::RMM;
         //OS_INV1: rm_to_cv = RN;
         //OS_INV2: rm_to_cv = RN;
         OS_DYN:  rm_to_cv = fpnew_pkg::DYN;
         default: rm_to_cv = fpnew_pkg::RNE;
      endcase
   endfunction : rm_to_cv

   // CVFPU operation <--> yurut_pkg os_islem_t donusumleri
   function static fpnew_pkg::operation_e op_to_cv(input os_islem_t op);
      case (op)
         OS_FMADD, OS_FMSUB: op_to_cv = fpnew_pkg::FMADD;
         OS_FNMSUB, OS_FNMADD: op_to_cv = fpnew_pkg::FNMSUB;
         OS_FADD, OS_FSUB: op_to_cv = fpnew_pkg::ADD;
         OS_FMUL: op_to_cv = fpnew_pkg::MUL;
         OS_FDIV: op_to_cv = fpnew_pkg::DIV;
         OS_FSQRT: op_to_cv = fpnew_pkg::SQRT;
         OS_FSGNJ, OS_FSGNJN, OS_FSGNJX: op_to_cv = fpnew_pkg::SGNJ;
         OS_FMIN, OS_FMAX: op_to_cv = fpnew_pkg::MINMAX;
         OS_FEQ, OS_FLT, OS_FLE: op_to_cv = fpnew_pkg::CMP;
         OS_FCLASS: op_to_cv = fpnew_pkg::CLASSIFY;
         OS_FCVT_W_S, OS_FCVT_WU_S: op_to_cv = fpnew_pkg::F2I;
         OS_FCVT_S_W: op_to_cv = fpnew_pkg::I2F;
         OS_FCVT_S_WU: op_to_cv = fpnew_pkg::I2F;
         OS_FMV_X: op_to_cv = fpnew_pkg::F2I;
         OS_FMV_W: op_to_cv = fpnew_pkg::I2F;
         default: op_to_cv = fpnew_pkg::MUL;
      endcase
   endfunction : op_to_cv
   ;

   fpnew_pkg::int_format_e CvFpuDefaultIntFmt = fpnew_pkg::INT32;
   fpnew_pkg::fp_format_e CvFpuDefaultFpFmt = fpnew_pkg::FP32;

   // CVFPU op_mode <--> yurut_pkg os_islem_t donusumleri
   function static logic op_mode_to_cv(input os_islem_t op);
      case (op)
         OS_FMSUB, OS_FNMADD, OS_FSUB, OS_FCVT_WU_S, OS_FCVT_S_WU: op_mode_to_cv = 1'b1;
         default: op_mode_to_cv = 1'b0;
      endcase
   endfunction : op_mode_to_cv
   ;
endpackage
