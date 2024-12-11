.DSEG
.ORG SRAM_START
    A: .BYTE 2
    B: .BYTE 2
    C: .BYTE 2

.CSEG

start:
    LDS R0, A
    LDS R1, A+1
    
    LDS R2, B
    LDS R3, B+1
    
    ADD r0, r2
    ADC r1, r3
    
    STS C, R0
    STS C+1, R1
    
    RJMP start