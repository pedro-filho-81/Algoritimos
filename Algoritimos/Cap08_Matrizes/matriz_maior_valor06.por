programa
{
	/*
	 * 2) Faça um programa que leia uma matriz de tamanho 4 × 4. Imprima 
	 * na tela o maior valor contido nessa matriz e a sua localização 
	 * (linha e coluna).
		Backes, André. Linguagem C (p. 129). GEN LTC. Edição do Kindle. 
	 * Pedro Filho, 18/12/2020
	 */
	inclua biblioteca Util --> util
	funcao inicio()
	{
		// constante
		const inteiro LINHA = 3
		const inteiro COLUNA = 3
		
		// criar matriz
		inteiro matriz[ LINHA ][ COLUNA ]

		// variável
		inteiro maior

		// adicionar valores
		adicionar( matriz, LINHA, COLUNA )

		// mostrar valores
		escreva( "Matriz:\n" )
		mostrar( matriz, LINHA, COLUNA )

		//chamar a função pesquisar e atribuir o valor a maior
		maior = pesquisar( matriz, LINHA, COLUNA )
		// MOSTRAR O MAIOR VALOR DA MATRIZ
		escreva("\nO maior valor é ", maior )
		
	}// FIM FUNÇÃO PRINCIPAL

	// função adicionar
	funcao adicionar( inteiro mtz[][], inteiro linha, inteiro coluna )
	{
		// loop para adicionar valores a matriz
		para( inteiro i = 0; i < linha; i++ )
		{
			para( inteiro j = 0; j < coluna; j++ )
			{
				//atribuir valores
				mtz[ i ][ j ] = util.sorteia(1, 50)
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

	// função pesquisar
	funcao inteiro pesquisar( inteiro mtz[][], inteiro linha, inteiro coluna )
	{
		// variáveo para o maior valor
		inteiro maior = mtz[ 0 ][ 0 ]
		inteiro indice_i = 0, indice_j = 0 // para o loop da pesquisa
		
		// loop para pesquisar valor
		para( inteiro i = 0; i < linha; i++ )
		{
			para( inteiro j = 0; j < coluna; j++ )
			{
				// se a matriz menor que o menor valor
				se( mtz[ i ][ j ] > maior )
				{
					// menor recebe matriz menor
					maior = mtz[ i ][ j ]
					indice_i = i + 1
					indice_j = j + 1				
				} // fim se externo
			} // fim para interno
		} // fim para externo	
			
		// mostrar a posição
		posicao( indice_i, indice_j )	
		retorne maior
		
	} // fim função pesquisar

	// função posição
	funcao posicao( inteiro a, inteiro b )
	{
		// imprimir
		escreva( "\nLinha: ", a, " Coluna: ", b )
	} // fim função posição
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2033; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */