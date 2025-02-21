; - Aula de RegistradoresIO
  start:
; -- Instru�oes IN e OUT
    inc R0 ; Incrementa R0
    out 0x1E, R0 ; Escreve no GPIOR0 (0x1E) o R0
    in R1, 0x1E ; L^e do' GPIOR0 (0x1E) para o R1

; -- Instru�oes SBI e CBI
    sbi 0x04, 5 ; Seta o bit 5 do registrador DDRB (0x04)
    cbi 0x04, 5 ; Reseta o bit 5 do registrador DDRB (0X04)
 
; -- Instru�oes SBIS e SBIC
  waitUM:
    sbis 0x09, 7 ; Salta a proxima intru�ao se o bit 7 do resgitrador PIND (0x09) � UM 
    rjmp waitZERO
  waitZERO:
    sbic 0x09, 7 ; Salta a proxima intru�ao se o bit 7 do registrador PIND � ZERO.
    rjmp waitZERO
    rjmp start
    