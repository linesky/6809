;http://6809.uk/

start:

fill:
    lda fillb
    adda fillc
    bcc fill5
    sta fillc
    lda fillc+1
    adda #1
    sta fillc+1
    lda fillb
fill5:
    sta fillc
    lda fillb+1
    adda fillc+1
    sta fillc+1

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