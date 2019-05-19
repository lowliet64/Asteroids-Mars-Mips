
.text


lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xffffff #verde normal : cor dos pixels do poligono
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,12 #altura
addi $18,$0,12 #largura
addi $19,$0,32# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
addi $21,$0,256
addi $4,$0,4

j main #faz com que o  codigo começe a ser executado a partido da label main
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

#algarismos com retangulos-------------------------------------------------------------------------------------------
dig6:
add $30,$31,$0
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xffffff #verde normal : branco
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,1 #altura
addi $18,$0,5 #largura
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
#segundo traco do 6
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xffffff #verde normal : branco
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,5 #altura
addi $18,$0,1 #largura
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
#terceiro traco do 6

lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xffffff #verde normal : branco
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,1 #altura
addi $18,$0,5 #largura
addi $21,$0,256
addi $2,$19,512
add $3,$0,$19 #backup do valor inicial
add $19,$0,$2
addi $4,$0,4
jal desenhar_retangulo
#terceiro traco do 6
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xffffff #verde normal : branco
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,1 #altura
addi $18,$0,5 #largura
addi $21,$0,256
addi $2,$19,512
add $19,$0,$2
addi $4,$0,4
jal desenhar_retangulo
#terceiro traco do 6
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xffffff #verde normal : branco
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,3 #altura
addi $18,$0,1 #largura
add $19,$0,$3
addi $19,$19,16
addi $19,$19,512
addi $4,$0,4
jal desenhar_retangulo
jr $30



dig7:
add $30,$31,$0
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xffffff #verde normal : branco
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,1 #altura
addi $18,$0,5 #largura
addi $21,$0,256
addi $4,$0,4
jal desenhar_retangulo
#segundo traco do 6
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xffffff #verde normal : branco
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,5 #altura
addi $18,$0,1 #largura
addi $21,$0,256
add $3,$0,$19
addi $19,$19,16
addi $4,$0,4
jal desenhar_retangulo
#terceiro traco do 6
jr $30

dig8: 
add $29,$0,$31
jal dig6
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xffffff #verde normal : branco
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,5 #altura
addi $18,$0,1 #largura
addi $21,$0,256
add $19,$0,$3
addi $19,$19,16
addi $4,$0,4
jal desenhar_retangulo
jr $29
#desenhar o digito 9d
dig9:add $29,$0,$31
jal dig7
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xffffff #verde normal : branco
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,3 #altura
addi $18,$0,1 #largura
addi $21,$0,256
add $19,$0,$3
addi $4,$0,4
jal desenhar_retangulo


lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xffffff #verde normal : branco
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,1 #altura
addi $18,$0,4 #largura
addi $21,$0,256
addi $19,$19,512
addi $4,$0,4
jal desenhar_retangulo
jr $29

dig0:
add $29,$0,$31
jal dig7
lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xffffff #verde normal : branco
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,6 #altura
addi $18,$0,1 #largura
addi $21,$0,256
add $19,$0,$3
addi $4,$0,4
jal desenhar_retangulo


lui $8,0x1001 #endereço inicial de posicao
addi $10,$0,0xffffff #verde normal : branco
addi $15,$0,0 #i
addi $16,$0,0 #j
addi $17,$0,1 #altura
addi $18,$0,5 #largura
addi $21,$0,256
addi $19,$19,1280
addi $4,$0,4
jal desenhar_retangulo
jr $29
#algarismos com retangulos-------------------------------------------------------------------

#----------------------------------------------------------desenhar a nave-------------------------------------------------#
desenhar_nave:
#------------------parametros------------------------------------
addi $18,$0,0xff00ff #cor da nav
lui $8,0x1001 
addi $8,$8,7540 #lugar aonde come�ar a ser desenhado
#------------------------parametros---------------------
    sw $18,0($8)
    addi $8,$8,252
    sw $18,0($8)
    addi $8,$8,4
    sw $18,0($8)
    addi $8,$8,4
    sw $18,0($8)
    addi $8,$8,248
    sw $18,0($8)
    addi $8,$8,4
    sw $18,0($8)
    addi $8,$8,4
    sw $18,0($8)
    addi $8,$8,244
    sw $18,0($8)
    addi $8,$8,4
    sw $18,0($8)
    addi $8,$8,4
    sw $18,0($8)
    addi $8,$8,4
    sw $18,0($8)
    addi $8,$8,4
    sw $18,0($8)
    jr $31
#------------------------------------------------------Desenhar Nave--------------------   
#desenha o placar
main:
        #asteroide 1
        lui $8,0x1001 #endereço inicial de posicao
	addi $10,$0,0x005500 #verde normal : cor dos pixels do poligono
	addi $15,$0,0 #i
      	addi $16,$0,0 #j
	addi $17,$0,12 #altura
	addi $18,$0,12 #largura
	addi $19,$0,1904# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
	addi $21,$0,256
	addi $4,$0,4
	jal desenhar_retangulo
	
	
	
	  #asteroide 2
        lui $8,0x1001 #endereço inicial de posicao
	addi $10,$0,0xffff00 #verde normal : cor dos pixels do poligono
	addi $15,$0,0 #i
      	addi $16,$0,0 #j
	addi $17,$0,5 #altura
	addi $18,$0,5 #largura
	addi $19,$0,9584# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
	addi $21,$0,256
	addi $4,$0,4
	jal desenhar_retangulo
	
	  #asteroide 2
        lui $8,0x1001 #endereço inicial de posicao
	addi $10,$0,0x9f0000 #verde normal : cor dos pixels do poligono
	addi $15,$0,0 #i
      	addi $16,$0,0 #j
	addi $17,$0,7 #altura
	addi $18,$0,7 #largura
	addi $19,$0,12576# posiçao do pixel em que começa a ser desenhado(a partir da extremidade esquerda)
	addi $21,$0,256
	addi $4,$0,4
	jal desenhar_retangulo
	
	
	#desenhar a nave no cen�rio
	addi $18,$0,0xff00ff #cor da nav
        lui $8,0x1001 
        addi $8,$8,7540 #lugar aonde come�ar a ser desenhado
        jal desenhar_nave
        
        #desenhar o placar
         addi $19,$0,264 #posicao inicial do algarismo
     	  jal dig0
	 addi $19,$0,288 #posicao inicial do algarismo
     	 jal dig0

     

 
 

    
sair:nop

#movimentaçao asteroids

#adicionar placar

#checkar colisao

     
