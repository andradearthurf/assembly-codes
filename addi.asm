.text
addi $s0, $zero, 5 # Soma 5 a $zero e atribui a $s0
addi $s1, $s0, 10  # Soma 10 a $zero e atribui a $s0
addi $s2, $s1, 20  # Soma 20 a $s1 e atribui a $s2

# li $s0, 10
# li $s1, 5
# li $s2, 20
# add $s3, $s0, $s1
# add $s4, $s3, $s2

li $v0, 1
la $a0, ($s2)
syscall