programa
{

	inclua biblioteca Tipos --> tp
	inclua biblioteca Texto --> tx
	inclua biblioteca Util --> u
	
	const cadeia loginCorreto = "adm", senhaCorreta = "adm"
	cadeia escolhaMenu = "0"
	cadeia produtos[999], classificacao[999], testeProduto, entradaClassificacao, textoCodigo = "", codigos[999], codigoPesquisado = ""
	inteiro contador = -1, contador1 = -1, quantidadeEstoque[999], quantidadeProduto
	inteiro indice = 0, testeIndice, encontrados, codigoRepetido = 0, testeCodigo = 0
	cadeia produto = "", testeClassificacao = "", teclaEnter = "", resposta = "", resposta1 = ""
	cadeia texto, entradaIndice, entradaQuantidade = "", entradaIndice2, entradaQuantidade2 = ""
	
	funcao inicio() {
	
		login()

		enquanto (escolhaMenu != "11") {

			
			u.aguarde(2000)
			limpa()

			menu()
			leia(escolhaMenu)

			se (escolhaMenu == "1") {

				inserir()
			
			} senao se (escolhaMenu == "2") {

				atualizar()
			
			} senao se (escolhaMenu == "3") {

				excluir()
			
			} senao se (escolhaMenu == "4") {

				imprimir()
			
			} senao se (escolhaMenu == "5") {
				
				ordemIndice()

			} senao se (escolhaMenu == "6") {	
			
				exibirPorClassificacao() 
			
			} senao se (escolhaMenu == "7") {
			    
			     adicionarEstoque()
			    
			} senao se (escolhaMenu == "8") {
			   
			     removerEstoque()
			    
			} senao se (escolhaMenu == "9") {
			    
			     saldoEstoque()
			    
			} senao se (escolhaMenu == "10") { 
			
				pesquisaCodigo()
			
			} senao se (escolhaMenu == "11") {
				
				 encerrar()
			
			} senao se (escolhaMenu == "") { 
			
				 escreva("Opção inválida!")
			
			} senao {

				escreva("Opção inválida!")
				u.aguarde(3000)
	        		limpa()
	        	
			}
		}

		escreva("\nObrigado pela preferencia!\n")
			
	}

	funcao login() {
	
		cadeia usuario_login, usuario_senha
		
		escreva("Informe o login: ")
		leia(usuario_login)

		escreva("Informe a senha: ")
		leia(usuario_senha)

		se (usuario_login == loginCorreto e usuario_senha == senhaCorreta) {
		
			escreva("\nLogin inserido com sucesso!\n")
		}
		
		se (usuario_login != loginCorreto ou usuario_senha != senhaCorreta) {

			escreva("\nLogin ou senha incorretos... Encerrando")
			encerrar ()
		}	
	}	

	funcao menu() {

		escreva("MENU\n")
		
		escreva("1 - Inserir\n")
		escreva("2 - Atualizar\n")
		escreva("3 - Excluir\n")
		escreva("4 - Exibir todos os produtos\n")
		escreva("5 - Exibir produto por ordem\n")
		escreva("6 - Exibir produto por classificação\n")
		escreva("7 - Adicionar estoque\n")
		escreva("8 - Remover estoque\n")
		escreva("9 - Saldo estoque\n")
		escreva("10 - Pesquisar por código\n")
		escreva("11 - Encerrar\n")
		escreva("O que deseja fazer? ")
			
	}

	funcao inserir() {
        
     	limpa()
		contador++
																
		faca {
		
			escreva("Insira um produto: ")
			leia(produto)
			
			se (produto == "") {

				escreva("Descrição Inválida!") 
		 		
			}
	
		} enquanto (produto == "")

		faca {

			escreva("\nInsira uma classificação: ")
			escreva("\n(A - primeira linha)")
			escreva("\n(B - linha regular)")
			escreva("\n(C - segunda linha)\n")
			escreva ("A, B ou C: ")
			leia(testeClassificacao)

			testeClassificacao = tx.caixa_alta(testeClassificacao)
			
		} enquanto (testeClassificacao != "A" e testeClassificacao != "B" e testeClassificacao != "C")

		faca {

			codigoRepetido = 0
			
			escreva("\nInsira o código do produto: ")
			leia(codigos[contador])
			
			para (inteiro i = 0; i <= contador; i++) {

				se (codigos[contador] == codigos[i] e contador != i) {	

					codigoRepetido = 1
				
				}
			
			}

			se (codigoRepetido == 1) {

				escreva("Código já inserido\n")
				
			}

			se (codigos[contador] == "") {

				escreva("Código Inválido!")
				
			}

		} enquanto (codigoRepetido == 1 ou codigos[contador] == "")
			
			produtos[contador] = produto
			classificacao[contador] = testeClassificacao
			escreva ("\nProduto inserido com sucesso!\n")
	}

	funcao atualizar() {
		
		limpa()
		faca {
			
			escreva("Qual índice deseja atualizar: ")
			leia(texto)
	
			
		se (texto == "") {

			escreva("Índice Inválido!")

			retorne
			
		}
		
		indice = tp.cadeia_para_inteiro(texto, 10)
			
		
			se (indice < 0 ou indice > contador) {

				escreva("Índice Inválido!")
				u.aguarde (2000)
				retorne
			}
		
		} enquanto (indice < 0 ou indice > contador)

			testeProduto = (produtos[indice])

		faca {
		
			escreva("\n" + testeProduto + " (índice " + indice + ") = ")
			leia(produtos[indice])
			
		} enquanto (produtos[indice] == "")
		
			escreva ("\nProduto atualizado com sucesso!\n")
		
	}

	funcao excluir() {
		
		limpa()
		escreva("Qual índice voce quer excluir? ")
		leia(texto)

		se (texto == "") {

			escreva("Índice Inválido!")

			retorne
			
		}
		
		indice = tp.cadeia_para_inteiro(texto, 10)

		se (indice <= -1) {

			escreva("Índice Inválido!")
			
			retorne
			
		}

		se (produtos[indice] == "") {

			escreva("Índice Inválido!")
			
		} senao {

			produtos[indice] = ""

			classificacao[indice] = ""

			codigos[indice] = ""

			escreva ("\nProduto excluido com sucesso!")
		
		}
	}

	funcao imprimir() {
        
     	limpa()
     	contador1 = -1

		se (resposta1 == "D" ou resposta1 == "d") {

			para (inteiro i = contador; i >= 0; i--) {

				se (produtos[i] == "") {
	                
	                	contador1++
	                
				} senao {

					escreva("Produto: " + produtos[i] + ", índice " + i + "\nClassificação: " + classificacao[i] + "\n\n")
					
				}
				
				se (contador1 == contador) {
			        
			     	escreva("Nenhum produto cadastrado!")
			        
			    }
			}
			
			resposta1 = ""

			enter()

		} senao {
			
			para (inteiro i = 0; i <= contador; i++) {

				se (produtos[i] == "") {
	                
	                	contador1++
	                
				} senao {

			     	escreva("Produto: " + produtos[i] + ", indice " + i + "\nClassificação: " + classificacao[i] + "\n\n")
					
				}
				
				se (contador1 == contador) {
			        
			     	escreva("Nenhum produto cadastrado")
				
			}
				
		}

		enter()
				
	   }
	}
	
	funcao ordemIndice() {
        
     	limpa()
		escreva("Deseja exibir os índices de forma crescente ou decrescente? (C/D) ")
		leia(resposta1)

			enquanto (resposta1 != "C" e resposta1 != "c" e resposta1 != "D" e resposta1 != "d") {
				escreva("Resposta inválida. Digite 'C' ou 'D': ")
				leia(resposta1)
			
		}
			imprimir()
	}

	funcao exibirPorClassificacao() {
		
		limpa()
		escreva ("Digite a classificação desejada: ")
		leia(entradaClassificacao)

		entradaClassificacao = tx.caixa_alta(entradaClassificacao)
		encontrados = 0
		
		se (entradaClassificacao == "A" ou entradaClassificacao == "B" ou entradaClassificacao == "C") {
		
			escreva ("\nProdutos com a classificação " + entradaClassificacao + "\n\n")

			para (inteiro i = 0; i <= contador; i++) {

				se (classificacao[i] == entradaClassificacao) {

					escreva ("Produto: " + produtos[i] + ", índice " + i)
					escreva("\nClassificação " + classificacao[i] + ", código " + codigos[i] + "\n\n")
					encontrados = 1
				}
				
			}
					 se (encontrados == 0) {

					 	escreva ("Nenhum produto encontrado na classificação " + entradaClassificacao + "\n\n")
							
					}
		} senao {

			escreva("Classificação inválida!\n")
			
		}
			escreva ("Precione enter para voltar ao menu: ")
			leia (teclaEnter)
		
	}

	funcao adicionarEstoque() {
	      
	      limpa() 
	      escreva("Qual índice você quer inserir uma quantidade? ")
	      leia(entradaIndice)
	      
	      enquanto (entradaIndice == "") {

			se (entradaIndice == "") {
				
				escreva("Índice Inválido!")
			
				escreva("\nPressione enter para voltar ao menu: ")
				leia(teclaEnter)
				
				limpa()
				
				retorne
			}
	
	      }
		
		 testeIndice = tp.cadeia_para_inteiro(entradaIndice, 10)
	         
	      se (testeIndice <= -1 ou testeIndice > contador) {
	          
	          escreva("índice Inválido!")
	          
	      } senao {	
	           
	          escreva("\n" + produtos[testeIndice] + ": Quantas unidades deseja inserir? ")
        	  	leia(entradaQuantidade)
        
		        enquanto (entradaQuantidade == "") {
		            
		            se (entradaQuantidade == "") {
		                
		            	escreva ("Unidade Inválida!")
		                
		            }
					escreva("\nDigite a unidade válida: ")
          			leia(entradaQuantidade)
		        }
		
		         		quantidadeProduto = tp.cadeia_para_inteiro(entradaQuantidade, 10)

				se (quantidadeProduto >= 0) {
		
		          	quantidadeEstoque[testeIndice] += quantidadeProduto 
		
		         		escreva("Quantidade atual: " + quantidadeEstoque[testeIndice])
		               enter()
		    } senao {

				escreva ("Unidade inválida!")
				
		    }   		   
		 }
	}

	funcao removerEstoque() {
	    
	     limpa()
	     escreva("Qual índice você quer remover uma quantidade? ")
	     leia(entradaIndice)
	      
	      enquanto (entradaIndice == "") {

			se (entradaIndice == "") {
				
				escreva("Índice Inválido!")
			
				escreva("\nPressione enter para voltar ao menu: ")
				leia(teclaEnter)
				limpa()
				retorne
			}
	
	      }
		
		 testeIndice = tp.cadeia_para_inteiro(entradaIndice, 10)
	      
	     se (testeIndice <= -1 ou testeIndice > contador) {
	          
	          escreva("Indice Inválido!")
	          
	      } senao {
	          
	          escreva("\n" + produtos[testeIndice] + ": Quantas unidades deseja remover? ")
	          leia(entradaQuantidade)

			enquanto (entradaQuantidade == "") {
		            
		            se (entradaQuantidade == "") {
		                
		                escreva ("Unidade Inválida!")
		                      
		            }
					 escreva("\nDigite a unidade válida: ")
          			 leia(entradaQuantidade)
		        }
		
		        		 quantidadeProduto = tp.cadeia_para_inteiro(entradaQuantidade, 10)

				se (quantidadeProduto >= 0) {

		         		 quantidadeEstoque[testeIndice] -= quantidadeProduto 
		
		         		 escreva("Quantidade: " + quantidadeEstoque[testeIndice])
		                enter()
		                 
		    } senao {

				escreva ("Unidade inválida!")

		    }	   
		}
	}

	funcao saldoEstoque() {
	    
	    limpa()
	    contador1 = -1
	    escreva("Saldo dos Produtos\n\n")
	    
	    para (inteiro i = 0; i <= contador; i++) {
	        
	        se (produtos[i] == "") {
	            
	            contador1++
	            
	        } senao {
	        
	            escreva(produtos[i] + ": " + quantidadeEstoque[i] + "\n")
	            
	        }
	        
	        se (contador1 == contador) {
			        
			    escreva("Nenhum produto cadastrado!\n")
				
			}
	    }

		enter()
	    
	}	

	funcao pesquisaCodigo() {
        
		limpa()
          textoCodigo = ""
		testeCodigo = 0

		enquanto (textoCodigo == "") {
		
			escreva("Insira o código para pesquisar: ")
			leia(textoCodigo)
	
			se (textoCodigo == "") {
			    
			    escreva("Código Inválido!\n")
			    
			}
		
		}
		
			para (inteiro i = 0; i<= contador; i++) {

				se (textoCodigo == codigos[i]) {

					escreva("\nProduto: " + produtos[i] + ", índice " + i + "\nClassificação " + classificacao[i] + "\n")
					testeCodigo = 1
					
				}
				
			}

		se (testeCodigo == 0) {

			escreva("\nCódigo inexistente")
			
		}
		
		enter()
		
	}

	funcao enter() {

		escreva ("\nPrecione enter para voltar ao menu: ")
		leia(teclaEnter)
		
	}
	
	funcao encerrar() {

		escolhaMenu = "11"
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 11490; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */