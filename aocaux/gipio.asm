; CODIGOS AULA GIPIO

; ===== CONFIGURANDO UM LED ==== ;
; -- Configuracao de pinos de entrada e saida
; setup:
;    sbi DDRB, PB5 ; Configura o pino PB5 como saida
; loop:
   ; Instrucao para ligar um led colocando PB5 de 0 para 1 
   ; sbi PORTB, PB5; Coloca o pino PB5 em 5V
   ; rjmp loop
   ; Para desligar um led vamos manter a configuracao do pino PB5 como saida, e vamos substituir a linha 7 por:
   ; cbi PORTB, PB5 ; Coloca o pino PB5 em 0V
   ; rjmp loop

; ==== CONFIGURANDO UM BOTAO ==== ;
  setup:
    sbi DDRD , PD2 ; Configura o pino PD2 como saida
    cbi DDRD , PD7 ; Configura o pino PD7 como entrada
    sbi PORTD, PD7 ; Ativa o pull-up para o botao
 naoPress:
    sbi PORTD, PD2 ; Desliga o led
    sbic PIND, PD7 ; Verifica se o botao foi pressionado
    rjmp naoPress
 press:
    cbi PORTD, PD2 ; Liga led
    sbis PIND, PD7 ; Verifica se o botao foi solto
    rjmp press
    
    rjmp naoPress
    
   