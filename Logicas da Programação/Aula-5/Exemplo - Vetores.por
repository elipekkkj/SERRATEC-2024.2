programa
{
	
	funcao inicio()
	{

         cadeia nomes[] = {"Roni","Carlos","Luis","Ana","Igor"}
         nomes[0] = "Isabella"
         
      para(inteiro i=1; i < 5; i++){
		escreva("Nome:")
		leia(nomes[i])
		//escreva(nomes[i],"\n")
	}
 	
 	para(inteiro i=0; i < 5; i++){
		escreva(nomes[i],"\t")
     }
	//escreva(nomes[6])
     escreva("\nFim do Programa")
     		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 369; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */