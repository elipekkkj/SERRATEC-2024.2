programa
{
     inclua biblioteca Util --> u
     logico termina = falso
     logico achou = falso

     cadeia salaCinema[10][12] = {
          {"0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 "},
          {"0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 "},
          {"0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 "},
          {"0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 "},
          {"0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 "},
          {"0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 "},
          {"0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 "},
          {"0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 "},
          {"0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 "},
          {"0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 "}
     }

     funcao mapaCinema()
     {
          para (inteiro lin = 0; lin < 10; lin = lin + 1) {
               para (inteiro col = 0; col < 12; col = col + 1) {
                    escreva(salaCinema[lin][col])
               }
               escreva("\n")
          }
     }
     funcao logico critica(inteiro lin, inteiro col)
     {
          se (lin > 9 ou col > 11) {
               retorne falso
          }
          senao {
               retorne verdadeiro
          }
     }

     funcao reserva()
     {
          inteiro y
          inteiro x
          escreva("Digite a linha e coluna do assento : \n")
          escreva("Linha (0 a 9): ")
          leia(y)
          escreva("Coluna (0 a 11): ")
          leia(x)
          para (inteiro lin = 0; lin <= 10; lin = lin + 1) {
               para (inteiro col = 0; col <= 12; col = col + 1) {

                    se (achou == verdadeiro) {
                         pare
                    }
                    se(critica(y,x) == falso){
					escreva("Números inválidos!")
					u.aguarde(2000)
					achou = verdadeiro
					pare
		}
                    se (y < 0 ou x < 0) {
                         termina = verdadeiro
                         pare
                    }
                    senao {
                         se (y == lin e x == col) {
                              se (salaCinema[lin][col] == "0 ") {
                                   salaCinema[lin][col] = "1 "
                                   escreva("Assento reservado com sucesso !!")
                                   achou = verdadeiro
                                   u.aguarde(2000)
                                   pare
                              }
                              senao {
                                   escreva("Assento já está reservado")
                                   achou = verdadeiro
                                   u.aguarde(2000)
                                   pare
                              }
                         }
                         
                    }
               }
          }
          achou = falso
     }

     funcao inicio()
     {
          enquanto (termina == falso) {
               limpa()
               mapaCinema()
               reserva()
          }
     }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2116; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */