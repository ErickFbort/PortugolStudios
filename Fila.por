programa
{
	inclua biblioteca Util--> u
	
	const inteiro 	total = 5, TB = 1000
	
	cadeia 	paciente[total], msg = "", enter, temp_paciente[total]
	inteiro 	n = 0, ponteiro = 0, idade[total], temp_idade[total], temp_ponteiro
	caracter 	opcao
	logico 	vazia = verdadeiro

	
		funcao inicio()
		{
			limpa()
			menu()
		}
		
		funcao cabecalho()
		{
			
			escreva("-----------------------------------------\n")
			escreva("|	SISTEMA DE FILA - ",msg, "	|\n")
			escreva("-----------------------------------------\n\n")
		}
		
		funcao menu()
		{
			msg = "Menu geral"
			cabecalho()
			
			escreva(" 1 - Inclua paciente na FILA.\n")
			escreva(" 2 - Informar paciente do atendimento.\n")
			escreva(" 3 - Remover paciente da FILA em ordem.\n")
			escreva(" 4 - Listar pacientes.\n")
			escreva(" 5 - Exibir status da FILA.\n")
 			escreva(" 6 - Desfazer exclusão da fila.\n")
			escreva(" 7 - Sair do sistema.\n")

			escreva("---------------------------------------------------\n")
			escreva("\nOpção: ")
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
					atender()
					pare
				}
				caso '3':
				{
					limpa_fila()
					pare
				}
				caso '4': 
				{
					listar()
					pare
				}
				caso '5':
				{
					status()
					pare
				}
				caso '6':
				{
					desfazer()
					pare
				}
				caso '7': 
				{
					sair()
					pare
				}
				
				caso contrario:
				{
					escreva("\nATENÇÃO: Opção invalida.!\n")
					u.aguarde(2000)
					inicio()
					pare
				}
			}
		}
		
		funcao cadastro()
		{
			limpa()
			msg="Cadastro."
			cabecalho()
			
			se (ponteiro == total)
			{
				escreva("ATENÇÃO: Impossovel incluir novos pacientes na FILA.\n")
				escreva(" 	   Limite de cadastros alcançados no sistema. \n")
				u.aguarde(2*TB)
				inicio()
				limpa()
				
			}
			senao
			{
				
				escreva("Informe o nome do paciente: \n")
				leia(paciente[ponteiro])
				limpa()

				escreva("Informe a idade do paciente: \n")
				leia(idade[ponteiro])
				limpa()
				ponteiro++
	
				inicio()
			}
			
		}
		
		funcao listar()
		{
			limpa()
			msg="Lista de pacientes"
			cabecalho()

			se (ponteiro == 0)
			{
				escreva("ATENÇÃO: Nenhum paciente cadastrado no sistema.\n")
				u.aguarde(2*TB)
				inicio()
			}
			senao
			{
				para(n = 0; n < ponteiro; n++)
				{
					escreva(" - Nome: ", paciente[n], ".\n")
				}
			}
			retorno()
		}

		funcao retorno()
		{
			escreva("===================================================\n")
			escreva("Aperte [ENTER] para retornar ao menu pricipal.\n")
			leia(enter)
			limpa()
			inicio()
		}

		funcao limpa_fila()
		{
			limpa()
			msg = "Limpar Fila"
			cabecalho()

			temp_ponteiro = ponteiro

			para (n = 0; n < ponteiro; n++)
			{
				temp_paciente[n] = paciente[n]
				temp_idade[n] = idade[n]
				paciente[n] = ""
				u.aguarde(250)
			}

			escreva("Aguarde, Excluindo todos os nomes da fila...\n")
			u.aguarde(3*TB)
			ponteiro = 0

			escreva("Fila sem registros.\n")
			retorno()
			limpa()
		}
		
		funcao status()
		{
			limpa()
			se(ponteiro !=0)	
			{
				vazia = falso
				escreva("Sua FILA não esta vazia, possui ", ponteiro, " pacientes aguardando.\n\n")

				escreva("[STATUS DOS PACIENTES]\n\n")

				inteiro crianca= 0, adolescente= 0, adulto= 0, terceira= 0

				para(n= 0; n<ponteiro;n++)
				{
					se(idade[n]<=9)
					{
						crianca++
					}
					se(idade[n]>=10 e idade[n]<=19)
					{
						adolescente++
					}
					se(idade[n]>=20 e idade[n]<=59)
					{
						adulto++
					}
					se(idade[n]>=60)
					{
						terceira++
					}

				}
					escreva("Total de crianças, ", crianca, ".\n")
					escreva("Total de adolescentes, ", adolescente, ".\n")
					escreva("Total de adultos, ", adulto, ".\n")
					escreva("Total de idosos, ", terceira, ".\n")				
			}
			senao
			{
				vazia = verdadeiro
				escreva("FILA esta sem pacientes.")
			}

			retorno()
		}

		funcao atender()
		{
			limpa()
			msg = "Chamando Pacientes"
			cabecalho()
			inteiro guiche

			//Realizar a mudança de posição dos pacientes da fila
			se(ponteiro !=0)	
			{
				guiche = Util.sorteia(1, 5)
				escreva("Chamando paciente ", paciente[0], " para ser atendido no guiche ", guiche,".\n")

				para(n=0;n<ponteiro-1;n++)
				{
					paciente[n] = paciente[n+1]
				}
				ponteiro--	//Decrementando a variavel ponteiro
			}
			senao
			{
				escreva("ATENÇÃO: Nenhum paciente encontrado na FILA para atendimento.\n")
			}

			retorno()	
		}
		
		funcao sair()
		{
			limpa()
			escreva("Finalizando programa em 05 segundos...")
			u.aguarde(1 * TB)
	
			limpa()
			escreva("Finalizando programa em 04 segundos...")
			u.aguarde(1 * TB)
	
			limpa()				
			escreva("Finalizando programa em 03 segundos...")
			u.aguarde(1 * TB)
	
			limpa()
			escreva("Finalizando programa em 02 segundos...")
			u.aguarde(1 * TB)
	
			limpa()
			escreva("Finalizando programa em 01 segundo...")
			u.aguarde(1 * TB)
	
			limpa()
			escreva("Programa finalizado com sucesso...")
			u.aguarde(2* TB)
			limpa()
		}

		funcao desfazer()
		{
			limpa()
			msg = "Refazer Fila"
			cabecalho()

			ponteiro = temp_ponteiro

			para (n = 0; n < ponteiro; n++)
			{
				paciente[n] = temp_paciente[n]
				idade[n] = temp_idade[n]
				u.aguarde(250)
			}

			escreva("Fila restaurada.\n")
			retorno()
			limpa()
		}
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2107; 
 * @DOBRAMENTO-CODIGO = [12, 18, 26, 91, 145, 179, 225, 252];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */