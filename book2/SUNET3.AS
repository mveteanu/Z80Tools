#define adr3 45000

;  ============================================
;  Sunet claxon
   Modificari se realizeaza cu:
     POKE(adr3+7),durata
     POKE(adr3+18),frecventa1
     POKE(adr3+27),frecventa2
;  ============================================
.org adr3
   ld   a,(23624)
   rra
   rra
   rra
   lb   b,240
   ld   c,254
e1 dec  h
   jr   nz,e2
   xor  16
   out  (c),a
   ld   h,238
e2 dec  l
   jr   nz,e1
   xor  16
   out  (c),a
   ld   l,254
   djnz e1
   ret
.end
