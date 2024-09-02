programa
{
	inclua biblioteca Util --> U
     
     caracter opcao
	logico vagas[31] 

     funcao logico critica(inteiro a)
     {
          se (a >= 1 e a <=30) {
               retorne verdadeiro
          }
          senao {
               retorne falso
          }
     }

     funcao entradaVeiculos()
     {
          inteiro n_vaga
          escreva("Numero da vaga: ")
          leia(n_vaga)
          se (critica(n_vaga) == verdadeiro) {
         		se(verificarVaga(n_vaga) == verdadeiro){
          para (inteiro i = 1; i < 31; i++) {
               se (i == n_vaga) {
                    vagas[i] = verdadeiro
                    limpa()
                    escreva("Carro entrou na vaga!")
                    U.aguarde(2000)
                    pare
               }
          }
     }
     senao{
     	escreva("Vaga " + n_vaga," ocupada!")
     	U.aguarde(2000)
     	limpa()
     	menu()
  		}
     }
	senao{
	escreva("Numero Invalido!")
	menu()
	}	
}
	funcao saidaVeiculos(){
	         inteiro n_vaga
          escreva("Numero da vaga: ")
          leia(n_vaga)
          se (critica(n_vaga) == verdadeiro) {
         	se(verificarVaga(n_vaga) == falso){
          	para (inteiro i = 1; i < 31; i++) {
               	se (i == n_vaga) {
                    vagas[i] = falso
                    limpa()
                    escreva("Carro saiu da vaga!")
                    U.aguarde(2000)
                    pare
               }
          }
     }
     senao{
     	escreva("Vaga " + n_vaga," ja está vazia!")
     	U.aguarde(2000)
     	limpa()
     	menu()
  		}
     }

	senao{
	escreva("Numero Invalido!")
	menu()
	}
}
	funcao logico verificarVaga(inteiro a){
		se(vagas[a] == falso){
			retorne verdadeiro		
		}
		senao{
			retorne falso
		}
	}

	funcao listar(){
		para(inteiro i=1; i <31; i++){
		    se (vagas[i] == verdadeiro){
		    		escreva(i,"-Ocupada\n")
		    }
			senao{escreva(i,"-Vazia\n")
			}
		}
	}
     funcao menu()
     {
          escreva("------------------------")
          escreva("\n1-Entrada de Veículo\n")
          escreva("2-Saída de Veículo\n")
          escreva("3-Listar vagas\n")
          escreva("4-Sair do programa\n")
          escreva("------------------------")
          escreva("\nDigite a opcão: ")
          leia(opcao)
          
     }

     funcao inicio()
     {
          menu()
		enquanto(opcao != '0'){
			
			escolha(opcao){

			caso '1': entradaVeiculos()
			limpa()
			menu()
			pare
			caso '2': saidaVeiculos()
			limpa()
			menu()
			pare
			caso '3': listar()
			menu()
			pare
			caso '4': opcao = '0'
			pare
			caso contrario: escreva("Opção inválida!")
			U.aguarde(2000)
			limpa()
			menu()
			pare
			}
		}
     }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2320; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vagas, 6, 8, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */