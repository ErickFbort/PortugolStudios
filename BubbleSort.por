programa
{
	inclua biblioteca Util
	const inteiro quant = 6

	inteiro idade[quant] = {5, 2, 46, 37, 20, 18}, n, x, temp_idade, total = 0
	cadeia nome[quant] = {"Elieze", "Mario", "CR7", "Messi", "Neymar", "Erick"}, temp_nome
	
	
	
	funcao inicio()
	{
		escreva("Listando o vetor original:\n\n")
		para(n=0;n<quant;n++)
		{
			escreva(nome[n], " - ", idade[n], "\n")
		}

		escreva("Listando o vetor em ordem crescente:\n\n")
		para(n=0;n<quant;n++)
		{
			para (x=0;x<quant-1;x++)
			{
				total++

				se (idade[x]>idade[x+1])
				{
					temp_idade = idade[x]
					temp_nome = nome[x]

					idade[x] = idade[x+1]
					nome[x]= nome[x+1]

					idade[x+1] = temp_idade
					nome[x+1] = temp_nome
				}
			}
		}

		para (n=0;n<quant;n++)
		{
			escreva(nome[n], " - ", idade[n], "\n")

		}

		escreva("\n\nTotal de testes executados: ", total)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 846; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */