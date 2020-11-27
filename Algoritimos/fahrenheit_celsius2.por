programa
{
	/*
	 * b)Ler uma temperatura em graus Fahrenheit e apresentá-la 
	 * convertida em graus Celsius. A fórmula de conversão é 
	 * C ← ((F – 32) * 5) / 9, sendo F a temperatura em Fahrenheit 
	 * e C a temperatura em Celsius.
		JOSE AUGUSTO NAVARRO GARCIA MANZANO. Algoritmos (p. 132). 
		Editora Saraiva. Edição do Kindle. 
	 * Autor: Pedro Filho, 27/11/2020
	 */
	funcao inicio()
	{
		// variáveis
		real c
		real f
		// entrada de dados
		escreva( "Informe a temperatura em Fahrenheit: " )
		leia( f )
		c = ( ( f - 32 ) * 5 ) / 9
		// mostrar resultado
		escreva( f + "º Fahrenheit equivale a " + c + "º Celsius.\n" )
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 542; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */