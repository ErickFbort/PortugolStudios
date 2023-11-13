programa
{

	inclua biblioteca Util --> u
	const inteiro TempoBase = 1000

	cadeia	tema_a, tema_b
	inteiro	voto_a = 0, voto_b = 0, voto_nulo = 0
	caracter	opcao, voto
	
	funcao inicio()
	{
		limpa()

		escreva("Qual seria o primeiro tema da sua enquente: Ex; biscoito x bolacha. \n\n")
		escreva("Opção 1: ")
		leia(tema_a)
		escreva("\nOpção 2: ")
		leia(tema_b)

		consulta()
	}
	
	funcao consulta()
	{
		limpa()
		escreva("Gostaria de votar? [S/N]\n")
		leia(opcao)

		se(opcao == 's' ou opcao == 'S')
		{
			enquete()
		}
		senao
		{
			resultado()
		}
	}
	
	funcao enquete()
	{
		limpa()
		escreva("Vote na opção da enquente que mais lhe agrada: \n")
		escreva("------------------------------------------------------\n\n")
		escreva("Digite 1 para a opção: ", tema_a, "\n")
		escreva("Digite 2 para a opção: ", tema_b, "\n")
		escreva("------------------------------------------------------\n\n")
		escreva("Opção: ")
		leia(voto)
		limpa()

		se(voto == '1')
		{
			voto_a++
			escreva("Voto registrado com sucesso. \n")
			u.aguarde(2*TempoBase)
			consulta()
		}
		senao se(voto == '2')
		{
			voto_b++
			escreva("Voto registrado com sucesso. \n")
			u.aguarde(2*TempoBase)
			consulta()
		}
	}

	funcao resultado()
	{
		limpa()
		escreva("Resultado da enquente entre, ", tema_a, " x ", tema_b,".\n")
		escreva("--------------------------------------------------------------\n")
		escreva(tema_a, " - ", voto_a, " votos.\n")
		escreva(tema_b, " - ", voto_b, " votos.\n")
		escreva("Nulos(s) - ", voto_nulo, " votos.\n\n")
		escreva("Total de votos: ", voto_a + voto_b + voto_nulo)

		escreva("\n------------------------------------------------------------\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 818; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */