.text

main:
li $s0, 50
li $s1, 10
mul $s2, $s0, $s1
li $v0, 1
la $a0, ($s2)
syscall
li $v0, 10 
syscall