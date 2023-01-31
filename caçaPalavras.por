programa
{
       inclua biblioteca Util --> u
       inclua biblioteca Texto --> txt
       
       cadeia entrada = "", nome = ""
       cadeia nomes[] = {"futebol","programacao","smartphone","cubo magico","matematica","cabeleleiro"}
       inteiro tamanho
       inteiro numberAleatorio,aleatorio
       inteiro chances = 0,pontuacao = 0,record = 0,hancking = 0
	 
	funcao inicio()
	{
		
		escreva("\n     |====================================================================================|")
		escreva("\n     |         --------------==SEJA BEM-VINDO AO JOGO DE CAÇA PALAVRAS==-------------     |")
		escreva("\n     |====================================================================================|\n")
		escreva("\n  #Deseja entrar no jogo?(sim/nao) -> ")
		leia(entrada)
		limpa()
		
		se(entrada == "sim" ou entrada == "Sim")
		{
			escreva("\n                           -------------------MENU----------------\n")
			escreva("\n Digite seu nome:")
			leia(nome)
			limpa()
			escreva(" Olah, " +nome+", bem-vindo(a) ao jogo caça-palavras!!!\n")
			escreva("\n   |==========================================MENU===============================================|")
			escreva("\n    ---| CHANCES: 10 |----------| PONTUAÇÃO: 0 |------| RECORD: 0 |------| HANCKING: ....... |---")
			escreva("\n   |=============================================================================================|\n\n")

			//biblioteca Util_
			numberAleatorio = u.sorteia(0,5)
			
			//biblioteca Texto_
			tamanho = txt.numero_caracteres(nomes[numberAleatorio])

			//biblioteca Util_
			aleatorio = u.sorteia(0, tamanho)

			cadeia letra = ""
			cadeia palavra = ""
			cadeia caractere = ""
			inteiro b = 1
			
			//===================================================
			escreva("palavra sorteada: "+nomes[numberAleatorio])
			
			escreva("\n______________Descubra a palavra: ")
			para(inteiro i = 0;i< tamanho;i++)
			{
				escreva(" _")
			}

				escreva("\n")
				
			para(inteiro i = 0;i< tamanho;i++)
			{
				
				//biblioteca Util_
				numberAleatorio = u.sorteia(0,5)
				
				//biblioteca texto_
				letra = txt.extrair_subtexto(nomes[numberAleatorio],(aleatorio - 1), aleatorio)
				
				escreva("Digite um caracter: ")
				leia(caractere)

				se(caractere == letra)
				{
					
					
					para(inteiro a = 0;a< (tamanho - b);a++)
					{
						escreva(" _")
						b++
					}
				}
			}

		}
		senao
		{
			escreva("VOCE NAO ENTROU NO JOGO")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2103; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */