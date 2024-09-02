programa
{
	
	funcao inicio()
	{
		cadeia nome
		inteiro idade
          caracter continuar = 'S'
          
		escreva("Nome:")
		leia(nome)
		escreva("Idade:")
		leia(idade)
          escreva("Deseja inserir outra pessoa (S/s):")
          leia(continuar)
          
          enquanto(continuar=='S' ou continuar == 's'){
            escreva("Nome:")
		  leia(nome)
		  escreva("Idade:")
		  leia(idade)
            escreva("Deseja inserir outra pessoa (S/s):")
            leia(continuar)
          }


		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */