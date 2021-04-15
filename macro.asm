.macro fim # Inicio do macro que encerra o programa
	li $v0, 10 # Configura o servico para o fim do programa - Exit.
	syscall	# Executa a instrucao.
.end_macro # Fim do macro
