programa
{
	/*
	 * h)Elaborar um programa que calcule e apresente o valor do volume 
	 * de uma caixa retangular, utilizando a fórmula VOLUME ← 
	 * COMPRIMENTO * LARGURA * ALTURA.
		JOSE AUGUSTO NAVARRO GARCIA MANZANO. Algoritmos (p. 133). 
		Editora Saraiva. Edição do Kindle. 
	 * Autor: Pedro Filho, 29/11/2020
	 */
	funcao inicio()
	{
		// variáveis
		inteiro volume, comprimento, largura, altura
		// entrada de valores
		escreva( "\nVOLUME DE UMA CAIXA RETANGULAR\n" )
		escreva( "Comprimento: " )
		leia( comprimento )
		escreva( "Largura: " )
		leia( largura )
		escreva( "Altura: " )
		leia( altura )
		// calcular
		volume = comprimento * largura * altura
		escreva("\nO volume da caixa é ", volume, "cm³\n" )
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 715; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */