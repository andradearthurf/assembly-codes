.data

msg1: .asciiz "Digite o primeiro numero: "
msg2: .asciiz "Digite o segundo numero: "
msg3: .asciiz "O resultado da multiplicacao eh: "

.text
li $v0, 4
la $a0, msg1
syscall

li $v0, 5
syscall

move $t0, $v0

li $v0, 4
la $a0, msg2
syscall

li $v0, 5
syscall

move $t1, $v0

li $v0, 4
la $a0, msg3
syscall

mul $t2, $t0, $t1
li $v0, 1
la $a0, ($t2)
syscall

li $v0, 10 
syscall