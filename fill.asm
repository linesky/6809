;http://6809.uk/

start:

fill:
    lda fillb+1
    adda fillc+1
    bcc fill5
    sta fillc+1
    lda fillc
    adda #1
    sta fillc
    lda fillb+1
fill5:
    sta fillc+1
    lda fillb
    adda fillc
    sta fillc

    ldx fillb
    lda filla
    ldb #1
   
fill1:
     sta $0,x
    abx 
    cmpx fillc
    bne fill1
    rts

filla:
fcb 255
fillb:
fcb $6,0
fillc:
fcb 0,8

hlt:
jmp hlt