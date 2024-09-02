programa
{
     inclua biblioteca Util --> u
     caracter opcao

     logico quartos[21]
     logico especialidade[20]
	
	cadeia nome[20]
	cadeia telefone[20]
	cadeia opcao_especialidade

	real faturamento_internacao = 0.0
	real totalgeral_consulta = 0.0
	real faturamento_total = 0.0
	real faturamento_consulta = 0.0
	
	inteiro pacientes_totais = 0
	inteiro n_pessoasconsulta = 0
	inteiro pediatria = 0
	inteiro outro = 0
	inteiro numerototal_consulta = 0
     
     funcao logico critica(inteiro a)
     {
          se (a >= 1 e a <= 20) {
               retorne verdadeiro
          }
          senao {
               retorne falso
          }
     }

     funcao internacao()
     {
          inteiro n_quarto
          escreva("Número do Quarto:")
          leia(n_quarto)
          se (critica(n_quarto) == verdadeiro) {
               se (verificar_vaga(n_quarto) == verdadeiro) {
                    para (inteiro i = 1; i < 21; i = i + 1) {
                         se (i == n_quarto) {
                              quartos[i] = verdadeiro
                              limpa()
                              escreva("Quarto reservado com sucesso!")
                              pacientes_totais = pacientes_totais + 1
                              faturamento_internacao = faturamento_internacao + 1
                              u.aguarde(2000)
                              pare
                         }
                    }
               }
               senao {
                    limpa()
                    escreva("Quarto " + n_quarto, " ocupado!")
                    u.aguarde(2000)
                    limpa()
                    menu()
               }
          }
          senao {
               escreva("Número inválido.")
               menu()
          }
     }

     

     funcao logico verificar_vaga(inteiro a)
     {
          se (quartos[a] == falso) {
               retorne verdadeiro
          }
          senao {
               retorne falso
          }
     }

     funcao listar()
     {
          para (inteiro i = 1; i < 21; i = i + 1) {
               se (quartos[i] == verdadeiro) {
                    escreva(i,"- Ocupado\n")
               }
               senao {
                    escreva(i,"- Vazio\n")
               }
          }
     }
     funcao consulta(){
     	
     	para(inteiro i=0; i < 21; i++){
			se(nome[i] == ""){
				escreva("Nome do Paciente: ")
				leia(nome[i])
				escreva("Telefone para contato: ")
				leia(telefone[i])
				escreva("Especialidade requisitada (Pediatria ou Outro): ")
				leia(opcao_especialidade)
				n_pessoasconsulta = n_pessoasconsulta + 1
				se(opcao_especialidade == "Pediatria"){
					especialidade[i] = verdadeiro
					pediatria = pediatria + 1
					totalgeral_consulta = totalgeral_consulta + 150
					escreva("Consulta com pediatra marcada!\n")
					u.aguarde(2000)
					limpa()
					menu()
			}
				senao se(opcao_especialidade == "Outro"){
						especialidade[i] = falso 
						outro = outro + 1
						totalgeral_consulta = totalgeral_consulta + 120
						escreva("Consulta marcada!\n")
						u.aguarde(2000)
						limpa()
						menu()
				}			
				senao{escreva("Opção Invalida!")
				}
			pare
			}
     	}
     }
     funcao faturamento(){

     	escreva("\nNúmero de Consultas: " + n_pessoasconsulta)
     	escreva("\nNúmero de internações: " + pacientes_totais)
     	escreva("\nFaturamento de consultas: ", totalgeral_consulta)
     	escreva("\nFaturamento de internações: ", faturamento_internacao * 500)
     	escreva("\nFaturamento geral: ", faturamento_internacao * 500 + totalgeral_consulta)
     	
     }

     funcao menu()
     {
          escreva("\n----------------------------")
          escreva("\nHOSPITAL - Sáude & Amor")
          escreva("\n1- Consulta Ambulatorial\n")
          escreva("2- Internação\n")
          escreva("3- Listar quartos\n")
          escreva("4- Faturamento\n")
          escreva("5- Sair do Programa\n")
          escreva("----------------------------\n")
          escreva("Digite a opção:")
          leia(opcao)
          

     }

     funcao inicio()
     {
          menu()
          enquanto (opcao != '5') {
               escolha (opcao) {
                    caso '1':
                         consulta()
                         limpa()
                         menu()
                         pare
                    caso '2':
                         internacao()
                         limpa()
                         menu()
                         pare
                    caso '3':
                         listar()
                         menu()
                         pare
                    caso '4':
                         faturamento()
                         menu()
                         pare
                    caso contrario:
                         escreva("Opção inválida!\n")
                         u.aguarde(2000)
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
 * @POSICAO-CURSOR = 3582; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */