.text






j main

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
addi $4,$0,256
addi $1,$0,0


diagonal: beq $1,$4,sair2
          sw $10,0($8)
          addi $8,$8,252
          addi $1,$1,1
          jal intervalo
          addi $14,$8,-252
          sw $0,0($14)
          
          
       
          j diagonal
          
sair2:nop



