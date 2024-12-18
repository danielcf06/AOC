; Exercício de Pilha e Sub Rotina - Soma 32 bits
.DSEG
.ORG SRAM_START
    A: .BYTE 4
    B: .BYTE 4
    C: .BYTE 4

.CSEG
start:
    LDI XH, HIGH(A)
    LDI XL,  LOW(A)
    LDI YH, HIGH(B)
    LDI YL,  LOW(B)
    LDI ZH, HIGH(C)
    LDI ZL,  LOW(C)
    LDI R17, 45
    LDI R18, 50
    RCALL ADD_32bits
    RJMP start
    
ADD_32bits:
    PUSH R17
    PUSH R18
    IN R17, SREG
    PUSH R17
    
    CLR R17
    CLR R18
    CLR R19
    
    LDS R17, A
    LDS R18, B
    ADD R17, R18
    STS C, R17
    
    LDS R17, A+1
    LDS R18, B+1
    ADC R17, R18
    STS C + 1, R17
    
    LDS R17, A+2
    LDS R18, B+2
    ADC R17, R18
    STS C+2, R17
    
    LDS R17, A+3
    LDS R18, B+3
    ADC R17, R18
    STS C+3, R17
    
    POP R17
    OUT SREG, R17
    POP R18
    POP R17
    
    ret
    
    