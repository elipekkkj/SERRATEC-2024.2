programa
{
	
	inclua biblioteca Util --> u
	caracter opcao
	cadeia convidados [50]
	funcao menu()
    {
        escreva("\nMENU DE OPÇÕES:\n")
        escreva("1- Inserir nome:\n")
        escreva("2- Listar convidados\n")
        escreva("3- Remover nome\n")
        escreva("4- Pagamento\n")
        escreva("0- Sair\n")
        escreva("Digite a opção:")
        leia(opcao)
        }
	funcao menu2() {
		caracter c1
		escreva("Deseja voltar ao menu de opcões? (s/n):")
		leia(c1)

		se(c1 == 's'){
			limpa()
			menu()
		}
		se(c1 == 'n'){
			opcao = '0'
		}
	}
	funcao inserir(cadeia nome) {
			para(inteiro i=0; i <= 50; i++){
				se(convidados[i] == ""){
				convidados[i] = nome
				escreva(nome, " adicionado!")
				u.aguarde(2000)
				pare
				}
			}
		}

	funcao remover(cadeia nome) {
			para(inteiro i=0; i <= 50; i++){
				se(convidados[i] == nome){
				convidados[i] = ""
				escreva(nome," removido!")
				u.aguarde(2000)
				pare
				}
			}
		}
	
	funcao listar() {
		para(inteiro i=0; i <= 49; i++){
				se(convidados[i] != ""){
					escreva(convidados[i], "\n")
				}
			}
		
		}

	funcao pagamento(){
		inteiro convidados_total = 0
		para(inteiro i=0; i <= 49; i++){
				se(convidados[i] != ""){
					convidados_total++
				}
			}
			escreva("\nO total de convidados é: " + convidados_total)
			escreva("\nO total será: ", (convidados_total * 120), "\n")
			
		
		}
    
	funcao inicio()
	{
	cadeia nome
	menu()
		enquanto(opcao != '0'){
			escolha(opcao){

			caso '1': limpa()
			escreva("Nome: ")
			leia(nome)
			limpa()
			inserir(nome)
			limpa()
			menu()
			pare
			caso '2': limpa()
			escreva("Convidados: \n")
			listar()
			menu2()
			pare
			caso '3': limpa()
			escreva("Nome: ")
			leia(nome)
			limpa()
			remover(nome)
			limpa()
			menu()
			pare
			caso '4': limpa()
			pagamento()
			menu2()
			pare
			caso contrario: limpa()
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
 * @POSICAO-CURSOR = 1892; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */