.data
msg1: .asciiz "Digite o seu nome: "
msg2: .asciiz "Seja bem-vindo: "
nome: .space 40

.text
li $v0, 4
la $a0, msg1
syscall

li $v0, 8
la $a0, nome
la $a1, 40
syscall

li $v0, 4
la $a0, msg2
syscall

li $v0, 4
la $a0, nome
syscall

li $v0, 10
syscall