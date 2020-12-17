programa
{
	/*
	 *h)Elaborar um programa que leia uma matriz A do tipo inteira de 
	 *duas dimensões com cinco linhas e cinco colunas. Construir uma 
	 *matriz B de mesma dimensão, em que cada elemento seja o dobro 
	 *de cada elemento correspondente da matriz A, com exceção dos 
	 *valores situados na diagonal principal (posições B[1,1], B[2,2], 
	 *B[3,3], B[4,4] e B[5,5]), os quais devem ser o triplo de cada 
	 *elemento correspondente da matriz A. Apresentar ao final a matriz B.
		JOSE AUGUSTO NAVARRO GARCIA MANZANO. Algoritmos (p. 403). 
		Editora Saraiva. Edição do Kindle. 
	 * Pedro Filho 16/12/2020
	 */
		inclua biblioteca Util --> util
	funcao inicio()
	{
		// constantes inteiras
		const inteiro LINHA = 5
		const inteiro COLUNA = 5
		
		// MATRIZES
		inteiro a[ LINHA ][ COLUNA ]
	 	inteiro b[ LINHA ][ COLUNA ]

		// CHAMAR FUNÇÃO ADICIONAR VALORES
		adicionar( a, b, LINHA, COLUNA )
		fatorial( a, b, LINHA )

		escreva( "\nVetor A:\n" )
		mostrar( a, LINHA, COLUNA )
		
		// mostrar matrar c
		escreva( "\nMatriz B:\n" )
		mostrar( b, LINHA, COLUNA )

	} // FIM FUNÇÃO PRINCIPAL

	// função adicionar valores
	funcao adicionar( inteiro mtz1[][], inteiro mtz2[][], inteiro linha, inteiro coluna )
	{
		// loop para adicionar valores
		para( inteiro i = 0; i < linha; i++ ) {
			para( inteiro j = 0; j < coluna; j++ ) {
			
				// adicionar valores aleatórios
				mtz1[ i ][ j ] = util.sorteia(1, 7 ) 
				// adicionar o dobro da matriz a
				mtz2[ i ][ j ] = mtz1[ i ][ j ] * 2
				 
			} // fim para interno
		} // fim para externo
	}// fim função para
	
	// função mostrar valores
	funcao mostrar( inteiro mtz[][], inteiro linha, inteiro coluna )
	{
		// loop para adicionar valores
		para( inteiro i = 0; i < linha; i++ ) {
			para( inteiro j = 0; j < coluna; j++ ) {
				
				// mostrar valores
				escreva( mtz[ i ][ j ], " " )
				
			} // fim para interno
			
			escreva( "\n" ) // pular linha
			
		} // fim para externo
	}// fim função para

	// função fatorial
	funcao fatorial( inteiro mtz1[][], inteiro mtz2[][], inteiro linha )
	{
		// variável
		inteiro fat = 1
		
		para( inteiro i = 0; i < linha; i++ ) 
		{
			// loop para o fatorial
			para( inteiro j = 1; j <= mtz1[ i ][ i ]; j++ )
			{
				// calcular o vatorial
				fat *= j
				
			} // fim para interno
			mtz2[ i ][ i ] = fat
			escreva( fat, " " )
			fat = 1
		} // fim para externo
	} // fim função
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2202; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */