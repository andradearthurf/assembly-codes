.data
msg: .asciiz "Ola Mundo!"

.text
.globl principal # Definido uma funcao

principal: # Semelhante a funcao main em C 
li $v0, 4 # Imprime uma string
la $a0, msg # Recebe a variavel msg no registrador de endereco $a0
syscall
li $v0, 10 # Prepara para finalizar o programa
syscall