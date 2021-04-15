.data
idade: .word 20
nome: .asciiz "Arthur de Andrade Ferreira\n"  

.text
lw $t0, idade
la $t1, nome

li $v0, 4
la $a0, ($t1)
syscall

li $v0, 1
la $a0, ($t0)
syscall

li $v0, 10
syscall