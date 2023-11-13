programa
{
	inclua biblioteca Matematica --> m
	const inteiro total = 10

	cadeia produto[total]
	real valor_produto[total], desconto[total], subtotal[total]
	inteiro quantidade[total], ponteiro = 0, n = 0
	caracter opcao
	
	funcao inicio()
	{
		escreva("=================================================\n")
		escreva("|		MERCADINHO DO ERICK		|\n")
		escreva("=================================================\n\n")
		pergunta()
	}

	funcao pergunta()
	{
		escreva("Gostaria de adicionar novos produtos ao carrinho? [S/N]\n")
		leia(opcao)
		limpa()
		calcular_valor_final()
	}

	funcao calcular_valor_final()
	{
		real total_compra = 0.0	
		
		se (opcao == 's' ou opcao == 'S')
		{
			escreva("Informe o nome do ", ponteiro+1, "º item:\n")
			leia(produto[ponteiro])
	
			limpa()
			escreva("Informe o valor (R$) do item ", produto[ponteiro], ":\n")
			leia(valor_produto[ponteiro])
	
			limpa()
			escreva("Quantos itens gostaria de adquirir do: ", produto[ponteiro], ":\n")
			leia(quantidade[ponteiro])
			limpa()

			se(quantidade[ponteiro] > 3)
			{
				desconto[ponteiro] = valor_produto[ponteiro]*0.05
				subtotal[ponteiro] = (valor_produto[ponteiro] - desconto[ponteiro]) * quantidade[ponteiro]
				ponteiro++
				inicio()
			}
			senao
			{
				subtotal[ponteiro] = valor_produto[ponteiro] * quantidade[ponteiro]
				ponteiro++
				inicio()
			}
		}
		senao
		{
			escreva("RESUMO DA COMPRA:\n")
			escreva("=========================\n")

			para(n = 0; n < ponteiro; n++)
			{

				se(quantidade[n] > 3)
				{
					escreva("Item: ", n+1, " - ", produto[n], " - R$ ", m.arredondar(valor_produto[n], 2), " x ", quantidade[n], " (-) Desc: ", m.arredondar(desconto[n], 2), " =- Subtotal: R$ ", m.arredondar(subtotal[n], 2), "\n")
				}
				senao
				{
					escreva("Item: ", n+1, " - ", produto[n], " - R$ ", m.arredondar(valor_produto[n], 2), " x ", quantidade[n],  " = Subtotal: R$ ", m.arredondar(subtotal[n], 2), "\n")
				}
				total_compra = total_compra + subtotal[n]
			}
			escreva("valor_final R$ ", m.arredondar(total_compra, 2))
		}
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 597; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */