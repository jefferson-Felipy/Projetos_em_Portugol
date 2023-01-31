programa
{

	/*DESAFIO:
	1- Qual a soma dos multiplos de 3 ou 5 menores que 1000?
	2- Qual a soma dos multiplos de 3 ou 5 menores que 500?
	*/
	
	funcao inicio()
	{
		somaUm()
		somaDois()
	}

	//Função que retorna soma dos multiplos de 3 ou 5 menores que 1000_
	funcao somaUm(){
		inteiro valores = 0

		para(inteiro i = 1;i < 1000;i++){
			se(i % 3 == 0 ou i % 5 == 0){
				valores += i
			}
		}	

		escreva("O resultado da soma dos multiplos de 3 ou 5 menores que 1000 é: "+valores)
		
	}

	//Função que retorna soma dos multiplos de 3 ou 5 menores que 500_
	funcao somaDois(){
		inteiro valores2 = 0

		para(inteiro i = 1;i  < 500;i++){
			se( i % 3 == 0 ou i % 5 == 0){
				valores2 += i	
			}
		}

		escreva("\nO resultado da soma dos multiplos de 3 ou 5 menores que 1000 é: "+valores2)
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 195; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */