.include <m328Pdef.inc>
start:
    inc r17
    cpi r17, 10
    brne start
    ldi r17, 0
muda_estado_led:
    sbis GPIOR0, 7
    rjmp seta
    rjmp zera
    seta:
	sbi GPIOR0, 7
	rjmp fim
    zera:
	cbi GPIOR0, 7
    fim:
	ret
    
	    
	

