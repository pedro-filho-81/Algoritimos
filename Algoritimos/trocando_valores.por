programa
{
	/*
	 * f)Ler dois valores para as variáveis A e B e efetuar a troca 
	 * dos valores de forma que a variável A passe a possuir o valor 
	 * da variável B e a variável B passe a possuir o valor da variável A. 
	 * Apresentar os valores após a efetivação do processamento da troca.
	JOSE AUGUSTO NAVARRO GARCIA MANZANO. Algoritmos (pp. 132-133). Editora Saraiva. Edição do Kindle. 
	 * Autor: Pedro Filho, 29/11/2020
	 */
	funcao inicio()
	{
		// variáveis
		inteiro a, b, c
		// entrada de dados
		escreva( "Valor de a: " )
		leia( a )
		escreva( "Valor de b: " )
		leia( b )
		// imprimir
		escreva( "A = ", a, " e B = ", b, " antes da troca.\n" )
		// fazer a troca
		c = a // c recebe a
		a = b // a recebe b
		b = c // b recebe c
		// imprimir
		escreva( "\nA = ", a, " e B = ", b, " depois da troca.\n" )
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 820; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */