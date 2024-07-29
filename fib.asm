.text 

	# t0 e t1 receberao os enderecos das duas ultimas posicoes do vetor
	# t2 recebera o valor de tam
	# t3 recebera o valor de i do loop
	# a0 e a1 receberao os valores contidos em t0 e t1 respectivamente
	# t4 recebera o PC+4 no for
	
	addi t2, x0, 20
	addi t1, t0, 4 # t1 = t0 + 4
	addi a0, x0, 1 # a0 = 1
	addi a1, x0, 1 # a1 = 1
	
	
fib:
	sw a0, 0(t0) # vetor[0] = 1
	sw a1, 0(t1) # vetor[1] = 1
	addi t3, x0, 2 # i = t3 = 2
	jal t4, for

for:
	bge t3, t2, fora_for # caso t3 >= t2, sai do for
	lw a0, 0(t0) # carrega o valor de t0 para a0
	lw a1, 0(t1) # carrega o valor de t1 para a1
	addi t0, t0, 4 # t0 = t0 + 4
	addi t1, t1, 4 # t1 = t0 + 4
	add a0, a0, a1 # t2 = t2 + t5
	sw a0, 0(t1) # vetor[i] = vetor[i-1] + vetor[i-2]
	addi t3, t3, 1 # t3++
	jalr t4 # volta para o inicio do for
	
fora_for:

	
	
	
