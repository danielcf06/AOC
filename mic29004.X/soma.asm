.DSEG
.ORG SRAM_START
    A: .BYTE 1
    B: .BYTE 1
    C: .BYTE 1

.CSEG

start:

    LDS r0, A
    LDS r1, B
    ADD r0, r1
    STS C, r0
    
    RJMP start