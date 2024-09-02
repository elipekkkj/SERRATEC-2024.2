programa
{
	
	funcao inicio()
	{
		/*cadeia aluno
		real nota1, nota2, media
		
		escreva("Nome do aluno:")
		leia(aluno)
		escreva("Digite a primeira nota:")
		leia(nota1)
		escreva("Digite a segunda nota:")
		leia(nota2)
		media = ((nota1+nota2)/2)
		escreva("Sua media é:", media)

		se(media>7){
			escreva("\nAluno aprovado!")
		} senao se(media>= 5 e media <=7){
			escreva("\nAluno de recuperação!")
	     }

	     senao{
	     	escreva("\nAluno reprovado :(")
	     }*/

/* o nome, idade e altura do atleta

O Atleta para participar da olimpíadas precisa
ter idade superior a 18 ou altura maior que 1.60

exibir participa ou não da olimpíada
           */

		cadeia nome
		inteiro idade
		real altura

		escreva("Nome do atleta:")
		leia(nome)
		escreva("Idade do atleta:")
		leia(idade)
		escreva("Altura do atleta:")
          leia(altura)
          
          se (idade >= 18 ou altura >= 1.60){
		 escreva("Atleta " + nome + " aprovado")
		 }senao{
		 	escreva ("Atleta " + nome + " reprovado")
		 }
		

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 974; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */