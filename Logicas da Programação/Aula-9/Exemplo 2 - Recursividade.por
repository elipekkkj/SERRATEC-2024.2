programa
{
	
	funcao inicio()
	{
	 inteiro numero
	 escreva("Digite o número: ")
	 leia(numero)
	 escreva("Resultado: " + somarNumAnte(numero))	
	}
	
	funcao inteiro somarNumAnte(inteiro num){
		inteiro resultado

		se(num==1){
			retorne 1
		}
		senao{
			resultado = somarNumAnte(num  - 1) + num
			retorne resultado
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 303; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */