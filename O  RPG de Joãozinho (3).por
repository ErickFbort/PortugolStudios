programa
{
	inclua biblioteca Util

     const inteiro TempoBase = 1000
	
	inteiro opcao
	cadeia enter, nome
	
	funcao inicio()
	{
		escreva("============ O mundo de Joãozinho ============\n")
		Util.aguarde(3 * TempoBase)
		
		limpa()
		escreva("Joãozinho decidiu que hoje irá ao campinho de futebol no outro lado da rua onde mora  para jogar bola com seus amigos.\n")
		Util.aguarde(5 * TempoBase)
		
		limpa()
		escreva("Joãozinho pode atravessar a rua para chegar mais rápido ao outro lado ou ir até a faixa de pedestres, qual opção ele escolherá?\n\n")
		Util.aguarde(5 * TempoBase)

		escreva("Opção 1: Atravessar fora da faixa\n")
		escreva("Opção 2: Atravessar na faixa\n\n") 
		escreva("====================================\n\n")
		
	
		escreva("Opção: ")
		leia(opcao)
		limpa()

		escolha(opcao)
		{
			caso 1:
			{
			escreva("Joãozinho atravessa fora da faixa e é atingido por um carro, vindo a óbito.\n")
			retorno()
			limpa()
			
			}

			caso 2:
			{
			escreva("Joãozinho atravessou a faixa em segurança e chegou ao outro lado da rua.\n")
			Util.aguarde(3 * TempoBase)
			limpa()
			}
		
			
		}

		escreva("Joãozinho atravessa a faixa e encontra com seu amigo Pedrinho.\n\n")
		escreva("Joãozinho: Oi Pedrinho, tudo bem? Quanto tempo hein!\n")
		escreva("Pedrinho: E aí Joãozinho, faz muito tempo mesmo! Bora jogar videogame lá em casa?\n\n")
		escreva("Opção 1: Ir jogar videogame com o Pedrinho.\n")
		escreva("Opção 2: Recusar o convite e continuar seu caminho\n\n")
		escreva("Opção: ")
		leia(opcao)
		limpa()
	

		se (opcao == 1)
		{
			escreva("Joãozinho foi jogar videogame na casa de Pedrinho.\n")
			retorno()
			sair()
			limpa()
		}
		senao
		{
			escreva("Joãozinho continuou seu caminho até o campinho e jogou bola com seus amigos até anoitecer.\n")
			retorno()
			sair()
		}
		
	}

		funcao retorno()
		{
			
		escreva("===========================================\n\n")
		escreva("Pressione a tecla [ENTER] para retornar.")
		leia(enter)
		limpa()
		inicio()
		
		}
		
		funcao sair()
	{
		limpa()
		escreva("FIM DE JOGO! O jogo será finalizado em 03 segundos\n")
		Util.aguarde(1 * TempoBase)

		limpa()
		escreva("FIM DE JOGO! O jogo será finalizado em 02 segundos\n")
		Util.aguarde(1 * TempoBase)

		limpa()
		escreva("FIM DE JOGO! O jogo será finalizado em 01 segundos\n")
		Util.aguarde(1 * TempoBase)

		escreva("FIM DE JOGO! O jogo foi finalizado!\n")
		
	}
}		

	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 559; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */