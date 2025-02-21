; ==== EXERCICIO GIPIO ==== ;
    
; -- Inicio do processo
setup:
    CBI DDRB , 2
    CBI DDRB , 3
    SBI PORTB, 2
    SBI PORTB, 3
    
    LDI r16, 0b1111_1111
    OUT DDRD, r16
    
    ajuNaoPress:
	sbi PORTD, 0
	sbi PORTD, 1
	sbi PORTD, 2
	sbi PORTD, 3
	sbic PINB, 2
	rjmp ajuNaoPress
    ajuPress:
	cbi PORTD, 0
	cbi PORTD, 1
	cbi PORTD, 2
	cbi PORTD, 3
    selNaoPress:
	sbi PORTD, 4
	sbi PORTD, 5
	sbi PORTD, 6
	sbi PORTD, 7
	sbic PINB, 3
	rjmp selNaopress
    selPress:
	cbi PORTD, 4
	cbi PORTD, 5
	cbi PORTD, 6
	cbi PORTD, 7
	
	rjmp ajuNaoPress	
