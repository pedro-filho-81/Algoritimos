programa
{
	/*
	 * g)Ler quatro valores numéricos inteiros e apresentar os resultados 
	 * armazenados em memória das adições e multiplicações utilizando 
	 * o mesmo raciocínio aplicado quando do usode propriedades 
	 * distributivas para a máxima combinação possível entre as quatro 
	 * variáveis.
	JOSE AUGUSTO NAVARRO GARCIA MANZANO. Algoritmos (p. 133). Editora Saraiva. Edição do Kindle. 
	 * Autor: Pedro Filho, 29/11/2020
	 */
	funcao inicio()
	{
		// variáveis
		inteiro soma, multi
		inteiro a = 10, b = 5, c = 7, d = 9
		// calcular
		soma = (a + b) + (a + c) + (a + d) + (b + c) + (b + d) + (c + d)
		multi = (a + b) * (a + c) * (a + d) * (b + c) * (b + d) * (c + d)

		// mostrar resultado
		escreva( "MÁXIMA COMBINAÇÃO POSSÍVEL ENTRE AS 4 VARIÁVEIS\n" )
		escreva( "Variáveis (a = 10, b = 5, c = 7, d = 9)\n" )
		escreva( "Soma = ((a + b) + (a + c) + (a + d) + (b + c) + (b + d) + (c + d)\n" )
		escreva( "Multi = ((a + b) x (a + c) x (a + d) x (b + c) x (b + d) x (c + d)\n" )
		escreva( "Soma = ", soma, "\nMultiplicação = ", multi, "\n" )
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1024; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */