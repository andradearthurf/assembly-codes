.data

msg1: .asciiz "O resultado da divisao eh: "
msg2: .asciiz "\nO resto da divisao eh "

.text
li $s0, 5
li $s1, 2
div $s0, $s1

mflo $t0
mfhi $t1

li $v0, 4
la $a0, msg1
syscall

li $v0, 1
la $a0, ($t0)
syscall

li $v0, 4
la $a0, msg2
syscall

li $v0, 1
la $a0, ($t1)
syscall

li $v0, 10 
syscall