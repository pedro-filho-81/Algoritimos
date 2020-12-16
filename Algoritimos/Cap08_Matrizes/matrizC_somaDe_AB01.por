programa
{
	/*
		a)Elaborar um programa que leia duas matrizes A e B, cada 
		uma de duas dimensões com cinco linhas e três colunas para 
		valores inteiros. Construir uma matriz C de mesma dimensão, 
		que seja formada pela soma dos elementos da matriz A com os 
		elementos da matriz B. Apresentar os elementos da matriz C.
		JOSE AUGUSTO NAVARRO GARCIA MANZANO. Algoritmos (p. 402). 
		Editora Saraiva. Edição do Kindle. 
		Pedro Filho, 16/12/2020
	*/
	inclua biblioteca Util --> util
	funcao inicio()
	{
		// constantes inteiras
		const inteiro LINHA = 3
		const inteiro COLUNA = 5
		
		// MATRIZES
		inteiro a[ LINHA ][ COLUNA ]
		inteiro b[ LINHA ][ COLUNA ]
		inteiro c[ LINHA ][ COLUNA ]

		// CAMAR FUNÇÃO ADICIONAR VALORES
		adicionar( a, LINHA, COLUNA )
		adicionar( b, LINHA, COLUNA )
		adicionarC( c, a, b, LINHA, COLUNA )

		// mostrar matria a
		escreva( "Matriz A:\n" )
		mostrar( a, LINHA, COLUNA )
		// mostrar matria b
		escreva( "\nMatriz B:\n" )
		mostrar( b, LINHA, COLUNA )

		// mostrar matria c
		escreva( "\nMatriz C:\n" )
		mostrar( c, LINHA, COLUNA )

		escreva("Olá Mundo")
	} // FIM FUNÇÃO PRINCIPAL

	// função adicionar valores
	funcao adicionar( inteiro mtz[][], inteiro linha, inteiro coluna )
	{
		// loop para adicionar valores
		para( inteiro i = 0; i < linha; i++ ) {
			para( inteiro j = 0; j < coluna; j++ ) {
				mtz[ i ][ j ] = util.sorteia(1, 50 ) 
			} // fim para
		} // fim para interno
	}// fim função para
	
	// função adicionar valores a matriz C
	funcao adicionarC( inteiro mtz1[][], inteiro mtz2[][], inteiro mtz3[][], inteiro linha, inteiro coluna )
	{
		// loop para adicionar valores
		para( inteiro i = 0; i < linha; i++ ) {
			para( inteiro j = 0; j < coluna; j++ ) {
				mtz1[ i ][ j ] = mtz2[ i ][ j ] + mtz3[ i ][ j ] 
			} // fim para
		} // fim para interno
	}// fim função para

	// função mostrar valores
	funcao mostrar( inteiro mtz[][], inteiro linha, inteiro coluna )
	{
		// loop para mostrar valores
		para( inteiro i = 0; i < linha; i++ ) {
			para( inteiro j = 0; j < coluna; j++ ) {
				escreva( mtz[ i ][ j ], " " ) 
			} // fim para
			escreva( "\n" ) // pular linha
		} // fim para interno
	}// fim função para
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1039; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */