programa
{
	
	funcao inicio()
	{
		inteiro numero

		escreva("Digite um numero: ")
		leia(numero)

		escreva("Resultado: " + incremento(numero),"\n")
		escreva(numero)
	}
	funcao inteiro incremento(inteiro &numero){
		numero += 10
		retorne numero
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 253; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */