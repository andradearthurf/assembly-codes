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

# Macro para ler um n�mero inteiro.
.macro leNumero
	li $v0, 5
	syscall
.end_macro 

.text
.globl principal # Indica que o programa come�a a execu��o em principal.


principal:
printf("Digite o primeiro n�mero: ")
leNumero
move $s0, $v0 # Move o conte�do de $v0 para $s0

printf("Digite o segundo n�mero: ")
leNumero
move $s1, $v0

bge $s0, $s1, MaiorOuIgual
printf("O primeiro n�mero � menor que o segundo")
fim

MaiorOuIgual:
printf("O primeiro n�mero � maior ou igual ao segundo")
fim

