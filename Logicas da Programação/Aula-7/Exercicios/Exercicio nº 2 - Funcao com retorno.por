programa
{	
	
	funcao inicio()
	{
	cadeia nome
	real salarioFixo, valordeVenda, comissaoPercentual
	logico ativo = verdadeiro	
		escreva("-------SISTEMA DE GESTÃO DE VENDEDORES-------\n")
		escreva("---------------------------------------------\n")
	
	 enquanto(ativo){
      escreva ("Digite o nome do vendedor (ou 'sair' para finalizar):")
      leia(nome)

      se(nome == "sair"){
        ativo = falso
        pare
      }
		escreva("--Salário fixo do vendedor: ")
		leia(salarioFixo)
		escreva("--Valor de venda do mês: ")
		leia(valordeVenda)
		escreva("--Comissao de venda: ")
		leia(comissaoPercentual)
		

		escreva("\n-----------R E S U M O-----------")
		escreva("\n---------------------------------")
		escreva("\n--Nome: " + nome)
		escreva("\n--Salário Líquido: " + salarioFixo)
		escreva("\n--Valor comissao: " + comissaoVenda(comissaoPercentual, valordeVenda))
		escreva("\n--Salário Final: ", salarioFixo + comissaoVenda(comissaoPercentual, valordeVenda),"\n")
		  		
    		}	
	}
	funcao real comissaoVenda(real comissaoPercentual, real valordeVenda){
		 		retorne (valordeVenda/100) * comissaoPercentual
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 427; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */