programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> Math
	
 funcao inicio()
 {

    inteiro senha
    inteiro nAleatorio
    inteiro candidato
    cadeia confirma
    inteiro vezes = 0
    real lula = 0.0,bolsonaro = 0.0,branco = 0.0
    real arredondaLula = 0.0 , arredondaBolsonaro = 0.0 , arredondaBranco = 0.0
    inteiro contagemDeVotos = 0
     
	   escreva("     ===========================*********==========================")
	   escreva("\n           ===================ELEICOES 2022======================")
	   escreva("\n     ===========================**********==========================")
	   escreva("\n\n                     ___Seja bem vindo as Eleicoes___")
	   escreva("\n             -----------------------------------------------")
		
	   nAleatorio = u.sorteia(100, 999)
	   escreva("\n                    --------------------------------")
        escreva("\n                          SENHA DE ENTRADA: "+nAleatorio)
        escreva("\n                    --------------------------------")

	   escreva("\n\n-> Digite a senha das urnas eletronicas para iniciar as votacoes: ")
	    leia(senha)
	    limpa()

  se(senha == nAleatorio)
  {
	   escreva("                --------VOCE INICIOU A VOTACAO-------\n\n")
	   escreva("\n   =======|===============|==================|=================|======")
	   escreva("\n          |====LULA -- 13 |  BOLSONARO -- 17 |  BRANCO -- 0====|")
	   escreva("\n   =======|===============|==================|=================|======")
	   escreva("\n\n               Escolha o candidato desejado: ")
           leia(candidato)
           limpa()
                 
      enquanto( ((candidato != 13) e (candidato != 17) e (candidato != 0) ou
      (candidato == 13) ou (candidato == 17) ou (candidato == 0)) e (candidato != -1) )
      {
             	        
	    enquanto((candidato != 13) e (candidato != 17) e (candidato != 0))
	    {
				 escreva("!!Escolha o candidato correto: ")
				 leia(candidato)
				 limpa()
				 vezes++
	    }
			
	    se(candidato == 13)
	    {
			escreva("     VOCE VOTOU NO CANDIDATO LULA!!!")
			escreva("\n   Deseja confirmar a votacao?\n  Digite SIM | NAO: ")
			leia(confirma)
			limpa()
				
			se(confirma == "sim" ou confirma == "SIM")
			{
			     lula++
			     escreva("\n               VOTAÇAO ANTERIOR CONFIRMADA!")
			     contagemDeVotos++
			}
			senao se(confirma == "nao" ou confirma == "NAO")
			{
				escreva("\nVoce nao confirmou a votaçao,portanto voltou para o menu de votacao!!!")
			}
			senao
			{
				escreva("\nDigite a confirmaçao corretamente!!!")
			}
		}
		senao se(candidato == 17)
		{
			  escreva("     VOCE VOTOU NO CANDIDATO BOLSONARO!!!")
			  escreva("\n   Deseja confirmar a votacao?\n  Digite SIM | NAO: ")
			  leia(confirma)
			  limpa()
				
			  se(confirma == "sim" ou confirma == "SIM")
			  {
			      bolsonaro++
			      escreva("\n                VOTAÇAO ANTERIOR CONFIRMADA!")
			      contagemDeVotos++
			  }
			  senao se(confirma == "nao" ou confirma == "NAO")
			  {
				 escreva("\nVoce nao confirmou a votaçao,portanto voltou para o menu de votacao!!!")
			  }
			  senao
			  {
				 escreva("\nDigite a confirmaçao corretamente!!!")
			  }
		 }
		 senao se(candidato == 0)
		 {
				escreva("\n     VOCE VOTOU NA OPÇAO EM BRANCO!!!")
				escreva("\n     Deseja confirmar a votacao?\n  Digite SIM | NAO: ")
				leia(confirma)
				limpa()
				
			se(confirma == "sim" ou confirma == "SIM")
			{
				  
			       branco++
			       escreva("\n                 VOTAÇAO ANTERIOR CONFIRMADA!")
			       contagemDeVotos++
			}
			senao se(confirma == "nao" ou confirma == "NAO")
			{
				escreva("\nVoce nao confirmou a votaçao,portanto voltou para o menu de votacao!!!")
			}
			senao
			{
				escreva("\nDigite a confirmaçao corretamente!!!")
			}
		 }
			 
		  escreva("\n   =======|===============|==================|=================|======")
		  escreva("\n          |====LULA -- 13 |  BOLSONARO -- 17 |  BRANCO -- 0====|")
		  escreva("\n   =======|===============|==================|=================|======")
		  escreva("\n\nEscolha o candidato desejado: ")
              leia(candidato)
              limpa()
        }
         
   //===============================================================================         
         se(candidato == -1)
         {
         	
         	escreva("               -------------------------RESULTADO---------------------------\n")
         	
         	se(lula > 0.0 e bolsonaro > 0.0)
         	{
         	escreva("\n     VOCE ENCERROU O SISTEMA DE VOTAÇAO!")
         	escreva("\n   ------------------------------------------\n")
         	escreva("\nContagem de votos: "+contagemDeVotos+" Votos")
         	escreva("\n   VOTOS PARA LULA: "+lula)
         	escreva("\n   VOTOS PARA BOLSONARO: "+bolsonaro)
         	escreva("\n   VOTOS EM BRANCO: "+branco)
         	
         real resulLula = (lula/contagemDeVotos)*100
         real resulBolsonaro = (bolsonaro/contagemDeVotos)*100
         real resulBranco = (branco/contagemDeVotos)*100

         arredondaLula = Math.arredondar(resulLula, 2)
         arredondaBolsonaro = Math.arredondar(resulBolsonaro, 2)
         arredondaBranco = Math.arredondar(resulBranco, 2)

	       se(resulLula > resulBolsonaro)
	       {
       	     escreva("\n ----------------------------------------------")
	         	escreva("\n          LULA GANHOU COM "+arredondaLula+"% DOS VOTOS!")
	         	escreva("\n ----------------------------------------------")
	       }
	       se(resulBolsonaro > resulLula)
	       {
	       	 escreva("\n ---------------------------------------------------------")
	       	 escreva("\n         BOLSONARO GANHOU COM "+arredondaBolsonaro+"% DOS VOTOS!")
	       	 escreva("\n ---------------------------------------------------------")
	       }
	       se(resulBolsonaro == resulLula)
	       {
	       	escreva("\n-----------------------------------------------------------------------------------------------------")
	       	escreva("\n    Os dois candidatos, LULA e BOLSONARO,'EMPATARAM' nos votos com "+arredondaBolsonaro+"% dos votos!")
	       	escreva("\n-----------------------------------------------------------------------------------------------------")
	       }
	       se(resulBranco > 49.9)
	       {
	       	escreva("\n    A porcentagem de votos brancos foi "+arredondaBranco+"%")
	       	escreva("\n-----------------------------------------------------------------------------------------------------")
	       }
         	}
         	senao se(lula > 0.0 ou bolsonaro > 0.0)
         	{
         		escreva("\n  ============================================================")
         		escreva("\n    --APENAS UM DOS CANDIDATOS RECEBEU VOTO(S)--")
         		escreva("\n    --PORTANTO, NAO É POSSIVEL QUE HAJA UM RESULTADO JUSTOS--")
         		escreva("\n  ============================================================")
         	}
         	senao
         	{
         		escreva("\n     ---------------------------------------------------------")
         		escreva("\n             --OS CANDIDATOS NAO RECEBERAM NUMHUM VOTO!--")
         		escreva("\n             --PORTANTO,NAO HOUVE VENCEDOR--")
         		escreva("\n     ---------------------------------------------------------")
         	}
	       
       }
	}
	senao
     {
		escreva("VOÇE DIGITOU A SENHA INCORRETA\nPORTANTO, NAO INICIOU A VOTACAO!!")
	}
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5891; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */