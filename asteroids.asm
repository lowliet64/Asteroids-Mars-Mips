
.text

init: lui $8,0x1001
      addi $10,$0,2048
      addi $11,$0,0
      
      addi $17,$0,0xffffff
      addi $18,$0,0xff00ff #red full
      addi $15,$0,0x006400 #verde qualquer



#desenha o placar
placar1:lui $8,0x1001
       addi $8,$8,520
       sw $17, 0($8)
       addi $8,$8,4
       sw $17, 0($8)
       addi $8,$8,4
       sw $17, 0($8)
       addi $8,$8,248
       sw $17, 0($8)
       addi $8,$8,8
       sw $17, 0($8)
       addi $8,$8,248
       sw $17, 0($8)
       addi $8,$8,4
       sw $17, 0($8)
        addi $8,$8,4
       sw $17, 0($8)

#desenha o placar
placar2:lui $8,0x1001
       addi $8,$8,536
       sw $17, 0($8)
       addi $8,$8,4
       sw $17, 0($8)
       addi $8,$8,4
       sw $17, 0($8)
       addi $8,$8,248
       sw $17, 0($8)
       addi $8,$8,8
       sw $17, 0($8)
       addi $8,$8,248
       sw $17, 0($8)
       addi $8,$8,4
       sw $17, 0($8)
        addi $8,$8,4
       sw $17, 0($8)
#desenhar a nave
nave:lui $8,0x1001
    addi $8,$8,7520
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
    
 
 
#desenhar asteroids
 addi $10,$0,0
 addi $9,$0,0
 addi $11,$0,15
 lui $8,0x1001
 addi $8,$8,2172
 
asteroide1:beq $9,$11,sair
	   addi $9,$9,1
	   addi $10,$0,0
       for2:beq $10,$11 , bk1
	   sw $15,0($8)
	   addi $8,$8,4
	   addi $10,$10,1
	   j for2
      
bk1:addi $8,$8,196
   j   asteroide1

    
sair:nop

#movimentaçao asteroids

#adicionar placar

#checkar colisao

     