programa
{
	
	funcao inicio()
	{

		real aresta, area, contador = 0

		faca {
			contador ++
			escreva("Informe o valor da aresta: ")
			leia(aresta)
				
		} enquanto (aresta <= 0)

		area = aresta * aresta
		
		
		escreva("A area e: ", area, "\nContador: " + contador)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 97; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */