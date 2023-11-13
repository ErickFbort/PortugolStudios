programa
{
	const inteiro tamanho = 6
	
	funcao inicio()
	{
		inteiro vetor[tamanho] = {1, 28, 15, 4, 19, 30}
		//Exibir vetor original
		escreva("Vetor original: ")
		imprimir_vetor(vetor)
		escreva("\n")
		//Inicio a função chamando MegerSort - Posição 0 
		MegerSort(vetor, 0, tamanho-1)

		escreva("\nVetor ordenado: \n")
		imprimir_vetor(vetor)
		escreva("\n\n")
	}

	funcao MegerSort(inteiro vetor[], inteiro ini, inteiro fim)
	{
		inteiro meio, i, j, k, aux[tamanho]

		se(ini < fim)
		{
			meio = (ini +fim)/2
			MegerSort(vetor, ini, meio)
			MegerSort(vetor, meio+1, fim)	

			//Fazer a ordenação dos elementos do vetor
			i = ini
			j = meio+1
			k = ini

			enquanto(i <= meio e j <= fim)
			{
				se(vetor[i] < vetor[j])
				{
					aux[k] = vetor[i]
					i++
					k++
				}
				senao
				{
					aux[k] = vetor[j]
					j++
					k++
				}
			}
			//Fazer o Teste se o indice chegou ao meio do vetor
			enquanto(i <= meio)
			{
				aux[k] = vetor[i]
				i++
				k++
			}
			//Fazer o teste se o indice chegou ao final do vetor
			enquanto(j <= fim)
			{
				aux[k] = vetor[j]
				j++
			}
			//Laço de repetição para ponteiro - Recebe o valor do indice e compara se é menor ou igual ao final do vetor
			para(i = ini; i <= fim; i++)
			{
				vetor[i] = aux[i]	
			}
		}
		escreva("\nPosição do vetor: ", ini, " ate ", fim, ": ")
		imprimir_vetor(vetor)
	}

	funcao imprimir_vetor(inteiro vetor[])
	{
		inteiro n

		para(n=0;n<tamanho;n++)
		{
			escreva(vetor[n], " ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 372; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */