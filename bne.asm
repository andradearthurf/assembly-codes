.data

# Macro que encerra o programa.
.macro fim
	li $v0, 10
	syscall
.end_macro 

# Macro que imprime uma string recebida como argumento.
.macro printf (%str)
	.data
	msg: .asciiz %str
	.text
	li $v0, 4
	la $a0, msg
	syscall
.end_macro 

.text
.globl principal # Indica que o programa come�a a execu��o em principal.

principal:

li $t1, 10 
li $t2, 20 

bne $t1, $t2, diferentes
printf("Os n�meros s�o iguais")
fim

diferentes:
printf("Os n�meros s�o diferentes!")
fim
