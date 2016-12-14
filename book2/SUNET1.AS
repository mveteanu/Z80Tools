#define adr1 45000

;  ============================================
;  Sunet impuscaturi
;
;  Programul BASIC de folosire a subrutinei:
;  10 FOR i=1 TO 10: RANDOMIZE USR adr1: NEXT i
;  ============================================
.org adr1
   ld   b,10
   push bc
   ld   hl,768
l0 ld   de,1
   push hl
   call 949
   pop  hl
   ld   de,16
   and  a
   sbc  hl,de
   jr   nz,l0
   pop  bc
   ret
.end
