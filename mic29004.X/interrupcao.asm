; TAREFA DE INTERRUPÇÃO - LEDS
 .equ ON  = PD2
 .equ OFF = PD3
 .equ L0  = PB0
 .equ L1  = PB1
 .def AUX = R16
 
 .org 0x0000
  RJMP SETUP
 .org 0x0002
  RJMP isr_on
 .org 0x0004
  RJMP isr_off
  
  .org 0x0034
  setup:
    ldi AUX,  0x03
    out DDRB,  AUX
    out PORTB, AUX
    cbi DDRD,   ON
    sbi PORTD,  ON
    cbi DDRD,  OFF
    sbi PORTD, OFF
    
    ldi AUX, 0x01
    STS EICRA, AUX
    SBI EIMSK, INTO 
    SEI
    
  main:
    sbi PORTB, L0
    LDI r19, 
    
    
  
    