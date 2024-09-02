programa
{
	
	funcao inicio()
	{
		inteiro num, i=1

		escreva("Digite um numero para ver na tabuada: ")
		leia(num)
		tabuada(num)
	 
	
	}
	funcao tabuada(inteiro num){

		para(inteiro i=0; i <= 10; i++){
			escreva(num, "x", i, "=", num * i, "\n")
			
			
			
		}
	}
}	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 255; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */