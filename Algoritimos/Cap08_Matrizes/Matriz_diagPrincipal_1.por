programa
{
	/*
	 * 3) Faça um programa que declare uma matriz de tamanho 5 × 5. 
	 * Preencha com 1 a diagonal principal e com 0 os demais elementos. 
	 * Ao final, escreva a matriz obtida na tela.
		Backes, André. Linguagem C (p. 129). GEN LTC. Edição do Kindle. 
	 * Pedro Filho, 18/12/2020
	 */
	
	funcao inicio()
	{
				// constante
		const inteiro LINHA = 5
		const inteiro COLUNA = 5
		
		// criar matriz
		inteiro matriz[ LINHA ][ COLUNA ]

		// chamar função adicionar
		adicionar( matriz, LINHA, COLUNA )

		// chamar a função mostrar
		escreva( "Matriz:\n" )
		mostrar( matriz, LINHA, COLUNA )

	}

	// função adicionar
	funcao adicionar( inteiro mtz[][], inteiro linha, inteiro coluna )
	{
		// loop para adicionar linha
		para( inteiro i = 0; i < linha; i++ )
		{	//loop para adicionar a coluna
			para( inteiro j = 0; j < coluna; j++ )
			{
				// se i igual a j
				se( i == j )
				{
					//atribuir valor 1 a matriz
					mtz[ i ][ j ] = 1
				} // fim se
				senao
				{
					// matriz recebe zero
					mtz[ i ][ j ] = 0
				} // fim se não
			} // fim função para
		} // fim para externo
	} // função adicionar

	// função mostrar
	funcao mostrar( inteiro mtz[][], inteiro linha, inteiro coluna )
	{
		// loop para mostrar valores a matriz
		para( inteiro i = 0; i < linha; i++ )
		{
			para( inteiro j = 0; j < coluna; j++ )
			{
				// mostrar valores
				escreva( " ", mtz[ i ][ j ], " " )
			} // fim função para

			escreva( "\n" )
		} // fim para externo
	} // função adicionar
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 898; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */