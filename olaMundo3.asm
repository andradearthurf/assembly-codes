.data

.macro finalizarPrograma # Nome da macro
	li $v0, 10 # Prepara para finalizar o programa
	syscall # Executa a instrucao
.end_macro # Fim do macro

.macro printf (%str) # Nome da macro. %str eh a string passada como paramentro
	.data
	msg: .asciiz %str # Define o calor da variavel msg
	.text
	li $v0, 4 # Prepara para imprimir uma string
	la $a0, msg # Salva o valor de msg na variavel $a0
	syscall # Executa a instrucao
.end_macro # Executa a instrucao

.text
.globl principal

principal:
printf("Ola mundo 3!!!\n")
finalizarPrograma