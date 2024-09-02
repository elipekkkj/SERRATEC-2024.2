programa
{
	
	funcao inicio()
	{	
		inteiro maior = 0, menor = 10000
		inteiro matriz[4][3] = {{50,60,20},
						    {80,20,30},
						    {700,21,30},
						    {20,7,40}}
						    

		para(inteiro lin=0; lin < 4; lin++){
			para(inteiro col=0; col < 3; col++){
				se(matriz[lin][col] > maior){
					maior = matriz[lin][col]	
				}
				se(menor > matriz[lin][col]){
					menor = matriz[lin][col]
			
				}
			}
		}
		escreva("O maior é: " + maior)
		escreva("\nO menor é: " + menor)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 171; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */