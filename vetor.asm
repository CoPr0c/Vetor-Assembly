.data
 vetor: .space 12 	# vetor = 3 números
.macro exit		# Macro com a funcao exit.
 li $v0, 10		# Preparando o processador para finalizar o programa.
 syscall		# Executando instrucao.
.end_macro		# Fim da macro.

.text			# Diretiva de dados.
 la $t0,vetor		# Armazena o vetor no registrador.
 li $t1,5		# t1 = 5 Value(+0)
 sw $t1,0($t0)		# Registrando o primeiro elemento.
 li $t1,13		# t1 = 13 Value(+4)
 sw $t1,4($t0)		# Registrando o segundo elemento.
 li $t1,-7		# t1 = -7 Value(+8)
 sw $t1,8($t0)		# Registrando o terceiro elemento.
 exit			# Fechar o programa.
