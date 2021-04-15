.data

vetor: .space 12
novaLinha: .asciiz "\n"

.text
addi $s0, $zero, 5
addi $s1, $zero, 10
addi $s2, $zero, 15

addi, $t0, $zero, 0

sw, $s0, vetor($t0)
addi $t0, $t0, 4
sw $s1, vetor($t0)
addi $t0, $t0, 4
sw $s2, vetor($t0)
addi $t0, $t0, 4

addi $t0, $zero, 0

lw $t6, vetor($t0)
addi $t0, $t0, 4
lw $t7, vetor($t0)

li $v0, 1
addi $a0, $t6, 0
syscall

li $v0, 4
la $a0, novaLinha
syscall

li $v0, 1
addi $a0, $t7, 0
syscall

li $v0, 4
la $a0, novaLinha
syscall

li $v0,10
syscall