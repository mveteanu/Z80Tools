#define adr2 45000

;  ============================================
;  Sunet OZN
;  Se pot modifica frecventa, viteza, durata si
;  derularea sunetului(in sus sau in jos)
;  folosind instructiunile:
;     POKE (adr2+1),frecventa
;     POKE (adr2+2),viteza
;     POKE (adr2+4),durata
;     POKE (adr2+23),28 (in sus) sau 29 (in jos)
;  ============================================
.org adr2
   ld   de,25698
l1 ld   h,50
   ld   a,(23624)
   rra
   rra
   rra
l2 ld   c,254
   xor  16
   out  (c),a
   ld   b,e
l3 djnz l3
   dec  h
   jr   nz,l2
   inc  e
   dec  d
   jr   nz,l1
   ret
.end
