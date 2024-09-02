programa
{
	
	funcao inicio()
	{
		inteiro num
		escreva("Digite o numero: ")
		leia(num)
		escreva("O fatorial de ", num , " é: ", fatorial(num))
	}
	
	funcao inteiro fatorial(inteiro i){
		se(i <= 1) {
			retorne i
		}senao{
			i = i * fatorial(i-1)
			retorne i
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 150; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */