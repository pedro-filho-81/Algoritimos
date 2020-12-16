programa
{
	/*	
		b)Elaborar um programa que leia duas matrizes A e B, 
		cada uma com uma dimensão para sete elementos inteiros. 
		Construir uma matriz C de duas dimensões, cuja primeira 
		coluna deve ser formada pelos elementos da matriz A e 
		a segunda coluna pelos elementos da matriz B. 
		Apresentar a matriz C.
		JOSE AUGUSTO NAVARRO GARCIA MANZANO. Algoritmos (p. 402). 
		Pedro Filho, 16/12/2020
	*/
	inclua biblioteca Util --> util
	funcao inicio()
	{
		// constantes inteiras
		const inteiro LINHA = 7
		const inteiro COLUNA = 2
		
		// MATRIZES
		inteiro a[ LINHA ] // vetor
		inteiro b[ LINHA ] // vetor
		inteiro c[ LINHA ][ COLUNA ]

		// CAMAR FUNÇÃO ADICIONAR VALORES
		adicionar( a, LINHA )
		adicionar( b, LINHA )
		adicionarC( c, a, b, LINHA )

		escreva( "Vetor A:\n" )
		mostrarAB( a, LINHA )
		escreva( "\nVetor B:\n" )
		mostrarAB( b, LINHA )
		// mostrar matria c
		escreva( "\nMatriz C:\n" )
		mostrarC( c, LINHA )

		escreva("Olá Mundo")
	} // FIM FUNÇÃO PRINCIPAL

	// função adicionar valores
	funcao adicionar( inteiro mtz[], inteiro linha )
	{
		// loop para adicionar valores
		para( inteiro i = 0; i < linha; i++ ) {
			mtz[ i ] = util.sorteia(1, 50 ) 
		} // fim para interno
	}// fim função para
	
	// função adicionar valores a matriz C
	funcao adicionarC( inteiro mtz1[][], inteiro mtz2[], inteiro mtz3[], inteiro linha )
	{
		// loop para adicionar valores
		para( inteiro j = 0; j < linha; j++ ) {
			mtz1[ j ][ 0 ] = mtz2[ j ] 
			mtz1[ j ][ 1 ] = mtz3[ j ] 
		} // fim para
	}// fim função para

	// função adicionar valores
	funcao mostrarAB( inteiro mtz[], inteiro linha )
	{
		// loop para adicionar valores
		para( inteiro i = 0; i < linha; i++ ) {
			escreva( mtz[ i ], " " )
		} // fim para interno
	}// fim função para

	// função adicionar valores a matriz C
	funcao mostrarC( inteiro mtz1[][], inteiro linha )
	{
		// loop para adicionar valores
		para( inteiro j = 0; j < linha; j++ ) {
			escreva( mtz1[ j ][ 0 ], "    ", mtz1[ j ][ 1 ], "\n" ) 
		} // fim para
	}// fim função para
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1849; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */