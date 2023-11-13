programa
{
	inclua biblioteca 	Texto
	inclua biblioteca 	Tipos
	inclua biblioteca 	Matematica-->m
	inclua biblioteca 	Util -->u
	
	const inteiro 		quant = 5, max_linha = 30, max_coluna = 10, TempoBase = 1000
	
	inteiro 	linha = 0, coluna = 0
	cadeia 	nome[max_linha][max_coluna], enter, pesquisa
	inteiro 	x = 0, n = 0, poltrona, idade[max_linha][max_coluna], lin = 0, col = 0
	real 	porcento_poltronas
	caracter 	opcao = ' '
	
	funcao inicio()
	{
	     enquanto (opcao != '7')
  			menuinicial()
	}

	funcao menuinicial()
	{
		escreva(" 1. Editar o total de poltronas da aeronave.\n")
		escreva(" 2. Realizar reserva de poltrona.\n")
		escreva(" 3. Visualizar Poltronas disponiveis.\n")
		escreva(" 4. Visualizar poltrona reservada.\n")
		escreva(" 5. Consultar passageiro pelo nome.\n")
		escreva(" 6. Visualizar o total de poltronas reservadas e poltronas disponiveis.\n")
		escreva(" 7. Sair do sistema.\n")
		escreva("===================================================================================\n")
		escreva("Opção: ")
		leia(opcao)
		limpa()

		escolha(opcao){
			caso '1':
				Aeronave_Tamanho()
				pare
			
			caso '2':
				reserva_poltrona()
				pare
			
			caso '3':
				vizualizar_disp()
				pare
			
			caso '4':
				listar()
				pare
			
			caso '5':
				Procura_Passageiro()
				pare
			
			caso '6':
				poltronas_livres()
				pare
			
			caso '7':
				sair()
				pare
				
			caso contrario:
				escreva("Opção Invalida, Tente Novamente...\n")
				u.aguarde(500)
			
		}
	}

	funcao Aeronave_Tamanho()
	{
		limpa()
		escreva("Numero de linhas: ")
		leia (linha)
		escreva("\nNumero de colunas: ")
		leia (coluna)
		limpa()
	}

	funcao retorno()
	{
		escreva("============================================\n")
		escreva("Aperte [ENTER] para retornar.")
		leia(enter)
		limpa()
		inicio()
	}

	funcao sair()
	{
		limpa()
		escreva("Finalizando programa aguarde alguns segundo...")
		u.aguarde(2 * TempoBase)

		limpa()
		escreva("PROGRAMA FINALIZADO COM SUCESSO!")
		u.aguarde(1* TempoBase)
		limpa()
	}

	funcao poltronas_livres()
	{
		inteiro total = linha * coluna, vazia = 0, cheia = 0
		inteiro crianca = 0, adolescente = 0, adulto = 0, idoso = 0

		para(n = 0; n < linha; n++)
		{
			para(x = 0; x < coluna; x++)
			{
				se(nome[n][x] != "" e idade[n][x] != 0)
					cheia = cheia+1
		          		se(idade[n][x] <=1)
		          			crianca++
		       	   				senao se(idade[n][x] >=13 e idade[n][x] <=17)
		          					adolescente++
		          						senao se(idade[n][x] >=18 e idade[n][x] <=59)
		          							adulto++
		          								senao
		          									idoso++
			}
		}

          vazia = total - cheia //Calcula o total de casas vazias

          limpa()
          escreva("\nTotal de poltronas: ", total, "\n")
          porcento_poltronas = Tipos.inteiro_para_real(cheia) / Tipos.inteiro_para_real(total) * 100
          escreva("\nPoltronas Cheias: ", cheia, " (", Matematica.arredondar( porcento_poltronas ,2), "%)", "\n")
          escreva("\nPoltronas Vazias: ", vazia, "\n\n")
       	
          escreva("\nNº de crinças na Aeronave ", crianca, ".\n")
          escreva("\nNº de adolescentes na Aeronave ", adolescente, ".\n")
          escreva("\nNº de adultos na Aeronave ", adulto, ".\n")
          escreva("\nNº2 de Idosos na Aeronave ", idoso, ".\n")
		retorno()
	}

	funcao reserva_poltrona()
	{
		lin=0
		col=0
		enquanto ((lin < 1) ou (lin > linha))
			escreva("Poltrona esta na linha? ")
			leia(lin)
			
		enquanto ((col<1) ou (col>coluna))
			escreva("Poltrona esta na coluna? ")
			leia(col)
			limpa()
			
		se(nome[lin-1][col-1] == "" e idade[lin-1][col-1] == 0)
		{
			limpa()
			escreva("Informe o nome do passageiro(a): ")
			leia(nome[lin-1][col-1])
			nome[lin-1][col-1] = Texto.caixa_alta(nome[lin-1][col-1])
			limpa()

			escreva("Informe a idade do passageiro(a).\n")
			leia(idade[lin-1][col-1])
			limpa()

			escreva("Poltrona reservada com sucesso!.\n")
			escreva("LINHA: ", lin, " - COLUNA: ", col," Boa viagem.")
			u.aguarde(3000)
			limpa()
		}
			
		senao
		{
			escreva("Poltrona ja está reservada!")
			u.aguarde(1000)
			limpa()
		}
	}

	funcao vizualizar_disp()
	{
		limpa()
		para(n = 0; n < linha; n++){
			para(x = 0; x< coluna; x++){
				se(idade[n][x] == 0)
					escreva("Fila: ", n+1, " - Coluna ", x+1," - VAZIO.\n")
		}
	}
	retorno()
	}

	funcao listar()
	{	
		para(n=0; n<=linha; n++){
			para(x=0; x<=coluna; x++){
				se(nome[n][x] != "" e idade[n][x] != 0)
					escreva("LINHA: ", n+1, " - COLUNA: ", x+1, " - Nome: ", nome[n][x], " - Idade: ", idade[n][x],".\n")
			}
		}
		retorno()
	}

	funcao Procura_Passageiro()
	{
		limpa()
		escreva("Informe o nome do passageiro(a): \n")
		leia(pesquisa)
		pesquisa = Texto.caixa_alta(pesquisa)
		limpa()

		EncontraPesquisa(pesquisa)
		
		retorno()
	}

	funcao EncontraPesquisa(cadeia Pesquisar)
	{
		inteiro AchouPosicao = 0

			para (inteiro line = 0; line < linha; line++){
				para(inteiro column = 0; column < coluna; column++){
					se (nome[line][column] == Pesquisar)
						AchouPosicao++
							escreva("Linha ", line+1, " - Coluna ", column+1, " Nome: ", nome[line][column], "\n")
				}
			}
							
		se (AchouPosicao > 0)
			escreva("Quantidades de resultados encontrados: ", AchouPosicao, ".\n")
		senao
			escreva("O cliente com nome ", pesquisa, ". Não foi encontrado.\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 209; 
 * @DOBRAMENTO-CODIGO = [15, 35, 21, 71, 81, 90, 102, 139, 178, 190, 201, 214];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nome, 11, 9, 4}-{idade, 12, 34, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */