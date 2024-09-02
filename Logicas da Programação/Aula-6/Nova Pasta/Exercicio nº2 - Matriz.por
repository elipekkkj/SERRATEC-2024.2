programa
{

     funcao inicio()
     {
          logico achou = falso
          logico existe = verdadeiro
          inteiro numero
          inteiro matriz[4][2] = {
               {21, 16},
               {60, 19},
               {199, 10},
               {12, 1}
          }
          enquanto (existe == verdadeiro) {
              achou = falso
               escreva("Digite um número: ")
               leia(numero)
               para (inteiro linha = 0; linha < 4; linha = linha + 1) {
                    para (inteiro coluna = 0; coluna < 2; coluna = coluna + 1) {
                         se (numero == matriz[linha][coluna]) {
                              escreva("Número existe na matriz, digite outro.\n")
                              achou = verdadeiro
                              pare
                         }
                    }
               }
               se (achou == falso) {
                    escreva("Número não existe na matriz.")
                    existe = falso
               }
          }
     }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1042; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */