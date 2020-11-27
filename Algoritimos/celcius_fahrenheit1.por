programa
{
	/*
	 * a)Ler uma temperatura em graus Celsius e apresentá-la convertida 
	 * em graus Fahrenheit. A fórmula de conversão é F ← C * 9 / 5 + 32, 
	 * sendo F a temperatura em Fahrenheit e C a temperatura em Celsius.
		JOSE AUGUSTO NAVARRO GARCIA MANZANO. Algoritmos (p. 132). 
		Editora Saraiva. Edição do Kindle. 
	 * Autor: Pedro Filho, 27/11/2020
	 */
	funcao inicio()
	{
		// variáveis
		real c
		real f
		// entreda de dados
		escreva( "Informe a temperatura em Celsius: " )
		leia( c )
		// calcular
		f = c * 9 / 5 + 32
		escreva( c + "º Celsius equivale a " + f + "º Fahrenheit.\n" )
		
		escreva("Olá Mundo")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 632; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */