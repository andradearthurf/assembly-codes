.text

main:
li $s0, 100
li $s1, 30
sub $s2, $s0, $s1
li $v0, 1
la $a0, ($s2)
syscall
li $v0, 10 
syscall