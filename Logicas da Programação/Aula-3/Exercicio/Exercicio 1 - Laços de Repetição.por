programa
{
	
	funcao inicio()
	{

       /* inteiro candidato_a = 0, candidato_b = 0
        inteiro branco = 0 , nulo = 0, totalEleitores = 0
        real porcentagema = 0.0, porcentagemb = 0.0 
        real porcentagembranco = 0.0 , porcentagemnulo = 0.0
        inteiro voto = 0

        faca{
		  escreva("Escolha seu candidato ou tecle 0 para encerrar\n","\n")
		  escreva("1-> Inacio Lula\n")
		  escreva("2-> Jair Bolsonaro\n")
		  escreva("3-> Branco\n")
		  
		  escreva("\nDigite seu voto:")
		  leia(voto)

		  limpa()

		  escolha(voto){

			caso 0: escreva("Votação Encerrada\n")
			pare
			caso 1: candidato_a++
			pare
			caso 2: candidato_b++
			pare
		     caso 3: branco++
		     pare
		     
		     caso contrario: nulo++
		     pare
		
		}
             }enquanto(voto !=0)

             totalEleitores = candidato_a + candidato_b + branco + nulo
             porcentagema = candidato_a *100/totalEleitores
             porcentagemb = candidato_b *100/totalEleitores
             porcentagembranco = branco *100/totalEleitores
             porcentagemnulo = nulo *100/totalEleitores

             escreva("\nTotal de votos: ", totalEleitores, "\n")
             escreva("Inacio Lula: ", candidato_a," voto(s)",".", porcentagema," % do total\n")
             escreva("Jair Bolsonaro: ",candidato_b," voto(s)",".",porcentagemb," % do total\n")
             escreva("Branco: ", branco," voto(s)",".",porcentagembranco," % do total\n")
             escreva("Nulo: ", nulo," voto(s)",".",porcentagemnulo," % do total")*/
             

             
             
             
             caracter confirma = 'S'
             caracter escolher
             real qtdhamburguer = 0.0
             real qtdcheese = 0.0
             real qtdfritas = 0.0
             real qtdrefri = 0.0
             real qtdmilk = 0.0
            

             escreva("Menu:\n","\n")
             escreva("1- Hamburguer.......R$ 3,00\n")
             escreva("2- Cheeseburguer.......R$ 2,50\n")
             escreva("3- Fritas.......R$ 2,50\n")
             escreva("4- Refrigerante.......R$ 1,00\n")
             escreva("5- Milkshake.......R$ 3,00\n")
             escreva("0- Sair :(\n","\n")

             enquanto(confirma == 'S' ou confirma == 's'){
                  
                   escreva("Escolha uma das opções acima:")
                   leia(escolher)

               escolha(escolher){
            
            caso '1': qtdhamburguer = qtdhamburguer + 1
            pare
            caso '2': qtdcheese = qtdcheese + 1
            pare
            caso '3': qtdfritas = qtdfritas + 1
            pare
            caso '4': qtdrefri = qtdrefri + 1
            pare
            caso '5': qtdmilk = qtdmilk + 1
            pare
            caso '0': confirma = 'n'
            pare
            caso contrario: escreva("\nSelecione uma opção válida!\n3")
            pare

        }
	      
	      escreva("Deseja adcionar mais itens? (S/s)")
	      leia(confirma)
     }
          
           real totalhamburguer = qtdhamburguer * 3.0
           real totalcheese = qtdcheese * 2.5
           real totalfritas = qtdfritas * 2.5
           real totalrefri = qtdrefri * 1.0
           real totalmilk = qtdmilk * 3.0
           real total = totalhamburguer + totalcheese + totalfritas + totalrefri + totalmilk
            
           escreva("\nQTD Hamburguer = "+ qtdhamburguer)
           escreva("\nQTD Cheeseburguer = "+ qtdcheese)
           escreva("\nQTD Fritas = " + qtdfritas)
           escreva("\nQTD Refrigerante = "+ qtdrefri)
           escreva("\nQTD Milkshake = "+ qtdmilk)
           escreva("\nTotal = R$ "+total)           
       

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3662; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */