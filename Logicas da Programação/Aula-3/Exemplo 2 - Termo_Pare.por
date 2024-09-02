programa
{
	
	funcao inicio()
	{
	inteiro numeroPessoas, idade, totalMaior=0, totalMenor=0
     escreva("Digite o nº de pessoas que deseja cadastrar:")
     leia(numeroPessoas)

     para(inteiro i=0; i < numeroPessoas; i++){
          escreva("Digite a sua idade:")
          leia(idade)
          se(idade >=18){
             totalMaior++
          }senao{
             totalMenor++
         }
		
	}
	escreva("Total de Pessoas maior de 18:", totalMaior,"\n")
     escreva("Total de Pessoas menor de 18:", totalMenor,"\n")

     
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 154; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */