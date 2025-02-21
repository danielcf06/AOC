.INCLUDE <m328Pdef.inc>

    setup:
	ldi r16, 0xff
	OUT DDRD, r16
	
	cbi DDRB, PB7
	sbi PORTB, PB7
	cbi DDRB, PB6
	sbi PORTB, PB6
    verifica_press:
	sbic PINB,PB7
	rjmp verifica_press
    botao_ajuste_press:
	cbi PORTD,PD0
	cbi PORTD,PD1
	cbi PORTD,PD2
	cbi PORTD,PD3
	
    botao_selecao_press:
	ldi r16, 0xf0
	out DDRD, r16
	
	
	
	
    
	
	