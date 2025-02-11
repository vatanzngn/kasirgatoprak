`timescale 1ns / 1ps

`include "yapilandirma.vh"
`include "sabitler.vh"

/*
Algoritma https://www.cise.ufl.edu/~mssz/CompOrg/CDA-arith.html adresinden alınmmıştır.
işaretli sayı bölme algoritması kullanılmamış olup elle modifiye edilmiştir
*/

// son tasarımda bu kullanılacak.
module ts_bolucu (
   input wire [`SOZCUK_GENISLIGI_BIT-1:0] bolunen_i,
   input wire [`SOZCUK_GENISLIGI_BIT-1:0] bolen_i,
   input wire isaretli_bolme_i,
   input wire rstn_i,
   output wire [`SOZCUK_GENISLIGI_BIT-1:0] bolum_o,
   output wire [`SOZCUK_GENISLIGI_BIT-1:0] kalan_o,
   input wire clk_i,
   input wire basla_i,
   //output wire islem_tamam_o,
   output wire hazir_o
);
   reg [`SOZCUK_GENISLIGI_BIT-1:0] a_ns, ar_ns, a_r, q_ns, q_r, m_ns, m_r;
   reg s_cmb;
   reg [$clog2(`SOZCUK_GENISLIGI_BIT):0] sayac_ns, sayac_r;
   reg [2*`SOZCUK_GENISLIGI_BIT-1:0] aq_cmb;  // bir bit daha uzun
   reg tamamlandi_cmb, tamamlandi_r;
   integer i;

   wire bolunen_isareti = bolunen_i[`SOZCUK_GENISLIGI_BIT-1];
   wire bolen_isareti = bolen_i[`SOZCUK_GENISLIGI_BIT-1];
   wire sonuc_isareti = isaretli_bolme_i && (bolunen_isareti ^ bolen_isareti);

   always @(*) begin
      s_cmb = 0;
      a_ns = a_r;
      q_ns = q_r;
      m_ns = m_r;
      ar_ns = a_r;
      aq_cmb = {a_r, q_r};
      sayac_ns = sayac_r;
      tamamlandi_cmb = 0;
      if ((sayac_r != 0) || basla_i) begin
         if (basla_i && sayac_r == 0) begin
            // 0'a bolme'yi handlela
            if (bolen_i == 0) begin
               case (isaretli_bolme_i)
                  0: begin
                     a_ns = bolunen_i;
                     q_ns = 2 ** 32 - 1;
                  end
                  1: begin
                     a_ns = bolunen_i;
                     q_ns = -1;
                  end
               endcase
               tamamlandi_cmb = 1;
               sayac_ns = 0;
            end
            else if (isaretli_bolme_i && (bolunen_i == -(2 ** 32 - 1) && bolen_i == -1)) begin
               a_ns = 0;
               q_ns = -(2 ** 32 - 1);
               tamamlandi_cmb = 1;
               sayac_ns = 0;
            end
            else begin
               sayac_ns = 32;
               m_ns = isaretli_bolme_i && bolen_isareti ? -bolen_i : bolen_i;
               q_ns = isaretli_bolme_i && bolunen_isareti ? -bolunen_i : bolunen_i;
               a_ns = 0;

               if (m_ns > q_ns) begin
                  a_ns = (isaretli_bolme_i && bolunen_i[`SOZCUK_GENISLIGI_BIT-1]) ? -q_ns : q_ns;
                  q_ns = 0;
                  tamamlandi_cmb = 1;
                  sayac_ns = 0;
               end
            end
         end
         if (!tamamlandi_cmb) begin
            for (i = 0; i < `BOLME_HER_CEVRIM_BIT_SAYISI; i = i + 1) begin
               aq_cmb = {a_ns, q_ns};
               aq_cmb = aq_cmb << 1;

               a_ns   = aq_cmb[2*`SOZCUK_GENISLIGI_BIT-1:`SOZCUK_GENISLIGI_BIT];
               q_ns   = aq_cmb[`SOZCUK_GENISLIGI_BIT-1:0];

               a_ns   = a_ns - m_ns;
               if (a_ns[`SOZCUK_GENISLIGI_BIT-1]) begin
                  q_ns[0] = 0;
                  a_ns = a_ns + m_ns;
               end
               else begin
                  q_ns[0] = 1;
               end

               sayac_ns = sayac_ns - 1;

               if (sayac_ns == 0) begin
                  if (a_ns[`SOZCUK_GENISLIGI_BIT-1]) begin
                     a_ns = a_ns + m_ns;
                  end
                  if (sonuc_isareti) q_ns = ~q_ns + 1;
                  tamamlandi_cmb = 1;
               end
            end
         end
      end
   end

   always @(posedge clk_i) begin
      if (!rstn_i) begin
         a_r <= 0;
         q_r <= 0;
         m_r <= 0;
         sayac_r <= 0;
         tamamlandi_r <= 0;
      end
      else begin
         a_r <= a_ns;
         q_r <= q_ns;
         m_r <= m_ns;
         sayac_r <= sayac_ns;
         tamamlandi_r <= tamamlandi_cmb;
      end
   end

   assign bolum_o = q_r;
   assign kalan_o = isaretli_bolme_i && bolunen_i[`SOZCUK_GENISLIGI_BIT-1] ? -a_r : a_r;
   assign hazir_o = basla_i ? 0 : tamamlandi_r;
endmodule
