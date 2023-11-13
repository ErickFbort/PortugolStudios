programa
{
	 inclua biblioteca Util --> u

	const inteiro linha = 20, coluna = 10
		
	cadeia nome[linha][coluna] //Linhas //Colunas
	inteiro n = 0, idade[linha][coluna], x = 0, lin = 0, col = 0 
	caracter opcao = ' '

	funcao inicio()
	{
		enquanto (opcao != '4')
		comeco()
	}
	
	
	funcao valor_0idade()
	{
		// Laço para incluir valor 0 em toda matriz idade
		para(n = 0; n < 3; n++)
		{
			para(x = 0; x < 3; x++)
			{
				idade[n][x] = 0 
			}
		}
	}

	funcao comeco()
	{

		limpa()
		escreva("-------------------------------\n")
		escreva("1 - Cadastro\n")
		escreva("2 - Lista\n")
		escreva("3 - Status\n")
		escreva("4 - Sair\n")
		escreva("-------------------------------\n")
		escreva("Opção: ")
		leia(opcao)

		escolha (opcao)
		{

			caso '1':
			{
				cadastro()
				pare
			
			}
			caso '2':
			{
				listar()
				pare
			}

			caso '3':
			{
				status()
				pare
			}
			caso '4':
			{
				sair()
				pare
			}
		}
	}	
		
	funcao cadastro()
	{
		limpa()
		escreva("Qual a linha? \n")
	 	leia(lin)
		limpa()

	 	escreva("Qual a coluna? \n")
	 	leia(col)
	 	limpa()

			se(nome[lin-1][col-1] == "" e idade[lin-1][col-1] == 0)
			{
				escreva("Informe a cidade da pessoa: \n")
			     leia(nome[lin-1][col-1]) 
				limpa()

				escreva("Informe a idade da pessoa: \n")
			     leia(idade[lin-1][col-1])
				limpa()
			}
		 	senao
		 	{
		 	 	escreva("Impossível gravar nesse espaço!")
				u.aguarde(3000)
		 	}
	}
	
	funcao listar()
	{
		limpa()
		para(n = 0; n < linha; n++)
		{
			para(x = 0; x < coluna; x++)
			{
				se(nome[n][x] != "" e idade[n][x] != 0)
				{
					escreva(n+1, " - ",x+1, " - Cidade: ", nome[n][x] , " - Idade: ", idade[n][x],  "\n")
				}
			}
			
		}
		u.aguarde(3000)
	}

	funcao status()
	{
		inteiro total = linha * coluna, vazia = 0, cheia = 0

		para(n = 0; n < linha; n++)
		{
			para(x = 0; x < coluna; x++)
			{
				se(nome[n][x] != "" e idade[n][x] != 0)
				{
					cheia = cheia+1
				}
	           }
          }

          vazia = total - cheia //Calcula o total de casas vazias

          limpa()
          escreva("Total de casas: ", total, "\n")
          escreva("Casas preenchidas: ", cheia, "\n")
          escreva("Casas Vazias: ", vazia, "\n")

          u.aguarde(3000)
	}
	funcao sair()
	{
		limpa()
		escreva("Saindo do sistema, Tchau!.")
		u.aguarde(3000)
		limpa()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 261; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */