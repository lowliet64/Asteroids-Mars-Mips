.text






j main
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xffffff #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,12 #altura
addi $18,$0,12 #largura
addi $19,$0,32# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4
 #faz com que o  codigo começe a ser executado a partido da label main
#-------------------------------------------------funçao para desenhar o poligono-----------------------------------#

desenhar_retangulo:  #calculo para quebra de linha 
		   mult $18,$4
		   mflo $20
		   sub $20,$21,$20
		   add $8,$8,$19
		   
          for1: beq $15,$17,sair_desenhar_retangulo
		   addi $15,$15,1
		   addi $16,$0,0
		   for2:beq $16,$18,br
		        sw $10,0($8)
		        addi $8,$8,4
		        addi $16,$16,1
		        j for2
br:add $8,$8,$20
   j for1	        
sair_desenhar_retangulo:jr $31
#------------------------------------------------------fimfunçao para desenha poligono-----------------------------#
intervalo:
    addi $9,$0,0
    addi $11,$0,100000
    for:beq $9,$11 sair
    	nop
    	addi $9,$9,1
    	j for
    sair:jr $31




main:
lui $8,0x1001
addi $8,$8,256
addi $10,$0,0xff00ff
addi $20,$0,256
addi $1,$0,0

addi $25,$0,32

diagonal: beq $1,$20,sair2
          lui $8,0x1001 #endereço inicial de posicao
	  addi $10,$0,0xffffff #verde normal : cor dos pixels do poligono
	  addi $15,$0,0 #i
	  addi $16,$0,0 #j
	  addi $17,$0,12 #altura
	  addi $18,$0,12 #largura
	  add $19,$0,$25# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
	  addi $21,$0,256
	  addi $4,$0,4
	  jal desenhar_retangulo
	  jal intervalo
	  lui $8,0x1001 #endereço inicial de posicao
	  addi $10,$0,0x000 #verde normal : cor dos pixels do poligono
	  addi $15,$0,0 #i
	  addi $16,$0,0 #j
	  addi $17,$0,12 #altura
	  addi $18,$0,12 #largura
	  add $19,$0,$25# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
	  addi $21,$0,256
	  addi $4,$0,4
	  jal desenhar_retangulo
	
	 addi $25,$25,4 # mover para a direita
         #addi $25,$25,-4 # mover para a esquerda
         #addi $25,$25,252 # mover para a diagnonal inferior-esquerda
         #addi $25,$25,260 # mover para a diagnonal inferior-direito
         #addi $25,$25,-252 # mover para a diagnonal superior-direita
         #addi $25,$25,-260 # mover para a diagnonal superior-esquerdo
          addi $1,$1,1
       
          j diagonal
          
sair2:nop



