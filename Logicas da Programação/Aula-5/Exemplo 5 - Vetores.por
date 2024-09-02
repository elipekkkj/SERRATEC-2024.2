programa
{
	
	funcao inicio()
	{
		inteiro numeros[8], soma=0, par=0, impar=0

		para(inteiro i=0; i < 8; i++){
    			escreva("Numero :")
    			leia(numeros[i])

    			soma = soma + numeros[i]

		se(numeros[i] % 2 == 0){
			par++
		}
            senao{
            	impar++		
            }
		
		}

		escreva("Soma dos nº: ", soma)
		escreva("\nQuant. de Pares: ", par)
		escreva("\nQuant. de Impares: ", impar)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 425; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numeros, 6, 10, 7}-{soma, 6, 22, 4}-{par, 6, 30, 3}-{impar, 6, 37, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */