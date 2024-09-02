programa
{
	
	funcao inicio()
	{
		entrada()
	}
	funcao entrada(){
	inteiro ano, semestre
	escreva("Digite o ano de nascimento:")
	leia(ano)
	
	escreva("Digite o semestre:")
	leia(semestre)
	
	imprimir(ano, semestre)
	}
	funcao imprimir(inteiro ano, inteiro semestre){
		escreva("***************************")
		escreva("**Cadrasto Residência:" +ano+"/"+semestre)
		escreva("***************************")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 362; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */