programa
{
	/*
	 * 6) Leia uma matriz de tamanho 3 × 3. Em seguida, imprima a soma 
	 * dos valores contidos em sua diagonal principal.
		Backes, André. Linguagem C (p. 129). GEN LTC. Edição do Kindle. 
	 * Autor: Pedro Filho, 18/12/2020
	 */
	inclua biblioteca Util --> util
	funcao inicio()
	{
		// criar constantes
		const inteiro LINHA = 4
		const inteiro COLUNA = 4

		// matriz
		inteiro matriz[ LINHA ][ COLUNA ]

		escreva("Mostrar a soma dos valores da diagonal principal:\n" )
		// CHAMAR a função atribuir
		adicionar( matriz, LINHA, COLUNA )

		// chamar a função mostrar
		escreva( "Matriz:\n" )
		mostrar( matriz, LINHA, COLUNA )
		
	} // fim função principal

	// função adicionar
	funcao adicionar( inteiro mtz[][], inteiro linha, inteiro coluna )
	{
		// loop para adicionar linha
		para( inteiro i = 0; i < linha; i++ )
		{	//loop para adicionar a coluna
			para( inteiro j = 0; j < coluna; j++ )
			{
				//atribuir valores a matriz
				mtz[ i ][ j ] = util.sorteia(1, 30)
			} // fim função para
		} // fim para externo
	} // função adicionar

	// função mostrar
	funcao mostrar( inteiro mtz[][], inteiro linha, inteiro coluna )
	{
		// variável
		inteiro somar = 0
		
		// loop para mostrar valores a matriz
		para( inteiro i = 0; i < linha; i++ )
		{
			para( inteiro j = 0; j < coluna; j++ )
			{
				// mostrar valores
				escreva( " ", mtz[ i ][ j ], " " )
				// se o valor da matriz maior que 10
				se( i == j )
				{
					// somar os valores da matriz
					somar += mtz[ i ][ j ] 
				} // fim si
			} // fim função para
			// pular uma lnha
			escreva( "\n" )
		} // fim para externo
		escreva( "A soma dos valores da diagonal principal é ", somar, "\n" )
	} // função adicionar
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 244; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */