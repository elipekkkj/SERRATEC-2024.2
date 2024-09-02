programa
{
	cadeia matriz[5][2] = {{"elipekkj", "luis232"},
						   {"analuiza", "luz223"},
						   {"maiaralz", "maiara445"},
						   {"leticiazzx", "leti4563"},
						   {"ravenzl", "ravena776"}}
	funcao inicio()
	{
		cadeia usuario, senha

		escreva("Usuario: ")
		leia(usuario)
		escreva("Senha: ")
		leia(senha)	
			
			
		se(buscarUsuarioeSenha(usuario, senha)){
			escreva("Bem-vindo ao sistema\n")			
		}
		senao{escreva("Usuario ou senha incorretos\n")
		}
	
	}
	funcao logico buscarUsuarioeSenha(cadeia usuario, cadeia senha){

				para(inteiro i=0; i < 5; i++){

				se(matriz[i][0] == usuario e matriz[i][1] == senha)
				{
					retorne verdadeiro
		
			}
		}
			retorne falso
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 543; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 3, 9, 6}-{usuario, 25, 42, 7}-{senha, 25, 58, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */