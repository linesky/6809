;http://6809.uk/

start:
    jsr mul
    jmp hlt
for:
   

mul:
   lda #0
   ldb mulb
mul1:
   adda mula
   subb #1
   bne mul1
   rts
   
   
mula:
fcb 16
mulb:
fcb 3

hlt:
jmp hlt