

.text
#paramentros 

#desenhar a nave
desenhar_nave:
#------------------parametros------------------------------------
addi $18,$0,0xff00ff #cor da nav
lui $8,0x1001 
addi $8,$8,7540 #lugar aonde começar a ser desenhado
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

desenhar   