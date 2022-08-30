;http://6809.uk/

start:
    ldb #1
    ldx #0
    lda #65
for:
     sta $400,x
    abx 
    cmpx #127
    bne for

hlt:
jmp hlt