;http://6809.uk/

start:
    ldb #1
    ldx #0
    lda #3
for:
     sta $600,x
    abx 
    cmpx #127
    bne for

hlt:
jmp hlt