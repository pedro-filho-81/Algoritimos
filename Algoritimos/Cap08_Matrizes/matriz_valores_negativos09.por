programa
{
	/*
	 * 5) Leia uma matriz de tamanho 4 × 4. Em seguida, conte e escreva 
	 * na tela quantos valores negativos ela possui.
		Backes, André. Linguagem C (p. 129). GEN LTC. Edição do Kindle. 
	 * Autor: Pedro Filho,  
	 */
	inclua biblioteca Util --> util
	funcao inicio()
	{
		// criar constantes
		const inteiro LINHA = 4
		const inteiro COLUNA = 4

		// matriz
		inteiro matriz[ LINHA ][ COLUNA ]

		escreva("Encontrar os valores negativos da matriz:\n" )
		// CHAMAR a função atribuir
		adicionar( matriz, LINHA, COLUNA )

		// chamar a função mostrar
		escreva( "Matriz:\n" )
		mostrar( matriz, LINHA, COLUNA )
		
	} // fim função principal

	// função adicionar
	funcao adicionar( inteiro mtz[][], inteiro linha, inteiro coluna )
	{
		// loop para a linha
		para( inteiro i = 0; i < linha; i++ )
		{
			// loop para a coluna
			para( inteiro j = 0; j < coluna; j++ )
			{
				// adicionar valor aleatório a matriz
				mtz[ i ][ j ] = util.sorteia(-10,30)
			} // fim para interno
		} // fim para externo
	} // fim função

	// função mostrar
	funcao mostrar( inteiro mtz[][], inteiro linha, inteiro coluna )
	{
		// variável
		inteiro contar = 0
		
		// loop para mostrar valores a matriz
		para( inteiro i = 0; i < linha; i++ )
		{
			para( inteiro j = 0; j < coluna; j++ )
			{
				// mostrar valores
				escreva( " ", mtz[ i ][ j ], " " )
				// se tem números negativos
				se( mtz[ i ][ j ] < 0 )
				{
					contar++
				}
				
			} // fim para
			// pular uma lnha
			escreva( "\n" )
		} // fim para externo
		escreva( "Foram encontrados ", contar, " valores negativos.\n" )
	} // função adicionar
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 966; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */