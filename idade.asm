.data
idade: .word 0

.text
# Captura valor digitado pelo usuario.
li $v0, 5 # Prepara para ler um inteiro pelo teclado.
syscall # Executa a instru��o.
move $t0, $v0 # Move de $v0 para $t0.

# Salvando na vari�vel idade
sw $t0, idade # Move o conte�do de $t0 para a vari�vel idade.

# Imprimindo o numero digitado
li $v0, 1 # Prepara para imprimir um inteiro.
lw $a0, idade # Carrega o valor de idade em $a0.
syscall # Executa a instru��o.

# Encerra o programa
li $v0, 10
syscall