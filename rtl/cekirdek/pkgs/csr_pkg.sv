`include "sabitler.vh"
package csr_pkg;

   typedef enum logic {
      FS_KAPALI,
      FS_KIRLI
   } fs_t;

   function static logic [1:0] fs_t_deger(input fs_t fs);
      case (fs)
         FS_KAPALI: fs_t_deger = 2'b00;
         FS_KIRLI:  fs_t_deger = 2'b11;
         default:   fs_t_deger = 2'b00;
      endcase
   endfunction : fs_t_deger

   function static fs_t deger_fs_t(input logic [1:0] fs);
      case (fs)
         2'b00:   deger_fs_t = FS_KAPALI;
         2'b11:   deger_fs_t = FS_KIRLI;
         default: deger_fs_t = FS_KAPALI;
      endcase

   endfunction : deger_fs_t
   typedef enum logic [4:0] {
      CSR_FCSR = 5'd0,
      CSR_FRM = 5'd1,
      CSR_FFLAGS = 5'd2,

      CSR_MISA = 5'd3,
      CSR_MSTATUS = 5'd4,
      CSR_MSTATUSH = 5'd5,
      CSR_MTVEC = 5'd6,
      CSR_MIE = 5'd7,

      CSR_MCYCLE = 5'd8,
      CSR_MCYCLEH = 5'd9,
      CSR_MINSTRET = 5'd10,
      CSR_MINSTRETH = 5'd11,
      CSR_MCOUNTINHIBIT = 5'd12,
      CSR_MSCRATCH = 5'd13,
      CSR_MEPC = 5'd14,
      CSR_MCAUSE = 5'd15,
      CSR_MTVAL = 5'd16,
      CSR_GECERSIZ_HEDEF = 5'd31
   } csr_yazilabilir_hedef_t;


   function static logic [4:0] csr_ic_adres_al(input csr_yazilabilir_hedef_t hedef);
      case (hedef)
         CSR_FCSR: csr_ic_adres_al = 5'd0;
         CSR_FRM: csr_ic_adres_al = 5'd1;
         CSR_FFLAGS: csr_ic_adres_al = 5'd2;

         CSR_MISA: csr_ic_adres_al = 5'd3;
         CSR_MSTATUS: csr_ic_adres_al = 5'd4;
         CSR_MSTATUSH: csr_ic_adres_al = 5'd5;
         CSR_MTVEC: csr_ic_adres_al = 5'd6;
         CSR_MIE: csr_ic_adres_al = 5'd7;

         CSR_MCYCLE: csr_ic_adres_al = 5'd8;
         CSR_MCYCLEH: csr_ic_adres_al = 5'd9;
         CSR_MINSTRET: csr_ic_adres_al = 5'd10;
         CSR_MINSTRETH: csr_ic_adres_al = 5'd11;
         CSR_MCOUNTINHIBIT: csr_ic_adres_al = 5'd12;
         CSR_MSCRATCH: csr_ic_adres_al = 5'd13;
         CSR_MEPC: csr_ic_adres_al = 5'd14;
         CSR_MCAUSE: csr_ic_adres_al = 5'd15;
         CSR_MTVAL: csr_ic_adres_al = 5'd16;
         default: csr_ic_adres_al = 5'd31;
      endcase
   endfunction : csr_ic_adres_al

   function static csr_yazilabilir_hedef_t csr_ic_adres_enum(input logic [4:0] ic_adres);
      case (ic_adres)
         5'd0: csr_ic_adres_enum = CSR_FCSR;
         5'd1: csr_ic_adres_enum = CSR_FRM;
         5'd2: csr_ic_adres_enum = CSR_FFLAGS;

         5'd3: csr_ic_adres_enum = CSR_MISA;
         5'd4: csr_ic_adres_enum = CSR_MSTATUS;
         5'd5: csr_ic_adres_enum = CSR_MSTATUSH;
         5'd6: csr_ic_adres_enum = CSR_MTVEC;
         5'd7: csr_ic_adres_enum = CSR_MIE;

         5'd8: csr_ic_adres_enum = CSR_MCYCLE;
         5'd9: csr_ic_adres_enum = CSR_MCYCLEH;
         5'd10: csr_ic_adres_enum = CSR_MINSTRET;
         5'd11: csr_ic_adres_enum = CSR_MINSTRETH;
         5'd12: csr_ic_adres_enum = CSR_MCOUNTINHIBIT;
         5'd13: csr_ic_adres_enum = CSR_MSCRATCH;
         5'd14: csr_ic_adres_enum = CSR_MEPC;
         5'd15: csr_ic_adres_enum = CSR_MCAUSE;
         5'd16: csr_ic_adres_enum = CSR_MTVAL;
         default: csr_ic_adres_enum = CSR_GECERSIZ_HEDEF;
      endcase
   endfunction : csr_ic_adres_enum

   function static csr_yazilabilir_hedef_t hedef(input logic [11:0] csr_adres);
      case (csr_adres)
         `CSR_ADDR_FCSR: hedef = CSR_FCSR;
         `CSR_ADDR_FRM: hedef = CSR_FRM;
         `CSR_ADDR_FFLAGS: hedef = CSR_FFLAGS;

         `CSR_ADDR_MISA: hedef = CSR_MISA;
         `CSR_ADDR_MSTATUS: hedef = CSR_MSTATUS;
         `CSR_ADDR_MSTATUSH: hedef = CSR_MSTATUSH;
         `CSR_ADDR_MTVEC: hedef = CSR_MTVEC;
         `CSR_ADDR_MIE: hedef = CSR_MIE;

         `CSR_ADDR_MCYCLE: hedef = CSR_MCYCLE;
         `CSR_ADDR_MCYCLEH: hedef = CSR_MCYCLEH;
         `CSR_ADDR_MINSTRET: hedef = CSR_MINSTRET;
         `CSR_ADDR_MINSTRETH: hedef = CSR_MINSTRETH;
         `CSR_ADDR_MCOUNTINHIBIT: hedef = CSR_MCOUNTINHIBIT;
         `CSR_ADDR_MSCRATCH: hedef = CSR_MSCRATCH;
         `CSR_ADDR_MEPC: hedef = CSR_MEPC;
         `CSR_ADDR_MCAUSE: hedef = CSR_MCAUSE;
         `CSR_ADDR_MTVAL: hedef = CSR_MTVAL;
         default: hedef = CSR_GECERSIZ_HEDEF;
      endcase

   endfunction : hedef

   function static logic [11:0] csr_adres(input csr_yazilabilir_hedef_t hedef);
      case (hedef)
         CSR_FCSR: csr_adres = `CSR_ADDR_FCSR;
         CSR_FRM: csr_adres = `CSR_ADDR_FRM;
         CSR_FFLAGS: csr_adres = `CSR_ADDR_FFLAGS;

         CSR_MISA: csr_adres = `CSR_ADDR_MISA;
         CSR_MSTATUS: csr_adres = `CSR_ADDR_MSTATUS;
         CSR_MSTATUSH: csr_adres = `CSR_ADDR_MSTATUSH;
         CSR_MTVEC: csr_adres = `CSR_ADDR_MTVEC;
         CSR_MIE: csr_adres = `CSR_ADDR_MIE;

         CSR_MCYCLE: csr_adres = `CSR_ADDR_MCYCLE;
         CSR_MCYCLEH: csr_adres = `CSR_ADDR_MCYCLEH;
         CSR_MINSTRET: csr_adres = `CSR_ADDR_MINSTRET;
         CSR_MINSTRETH: csr_adres = `CSR_ADDR_MINSTRETH;
         CSR_MCOUNTINHIBIT: csr_adres = `CSR_ADDR_MCOUNTINHIBIT;
         CSR_MSCRATCH: csr_adres = `CSR_ADDR_MSCRATCH;
         CSR_MEPC: csr_adres = `CSR_ADDR_MEPC;
         CSR_MCAUSE: csr_adres = `CSR_ADDR_MCAUSE;
         CSR_MTVAL: csr_adres = `CSR_ADDR_MTVAL;
         CSR_GECERSIZ_HEDEF: csr_adres = 12'h0;
         default: csr_adres = `CSR_ADDR_MISA;
      endcase

   endfunction : csr_adres

endpackage
