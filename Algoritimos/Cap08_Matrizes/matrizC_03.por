programa
{
	/*
	 * d)Elaborar um programa que leia uma matriz A de uma dimensão com dez 
	 * elementos inteiros. Construir uma matriz C de duas dimensões com três 
	 * colunas, sendo a primeira coluna da matriz C formada pelos elementos 
	 * da matriz A somados com 5, a segunda coluna formada pelo valor do cálculo 
	 * da fatorial de cada elemento correspondente da matriz A e a terceira e 
	 * última coluna pelos quadrados dos elementos correspondentes da matriz A. 
	 * Apresentar a matriz C.
		JOSE AUGUSTO NAVARRO GARCIA MANZANO. Algoritmos (p. 402). 
		Editora Saraiva. Edição do Kindle. 
	 * Pedro Filho 16/12/2020
	 */
		inclua biblioteca Util --> util
	funcao inicio()
	{
		// constantes inteiras
		const inteiro LINHA = 12
		const inteiro COLUNA = 3
		
		// MATRIZES
		inteiro a[ LINHA ] // vetor
		inteiro c[ LINHA ][ COLUNA ]

		// CHAMAR FUNÇÃO ADICIONAR VALORES
		adicionar( a, LINHA )
		adicionarC( c, a, LINHA )
		fatorial( c, a, LINHA )

		escreva( "Vetor A:\n" )
		mostrarAB( a, LINHA )
		
		// mostrar matrar c
		escreva( "\nMatriz C:\n" )
		mostrarC( c, LINHA )

		escreva("Olá Mundo")
	} // FIM FUNÇÃO PRINCIPAL

	// função adicionar valores
	funcao adicionar( inteiro mtz[], inteiro linha )
	{
		// loop para adicionar valores
		para( inteiro i = 0; i < linha; i++ ) {
			// adicionar valores aleatórios
			mtz[ i ] = util.sorteia(1, 8 ) 
		} // fim para interno
	}// fim função para
	
	// função adicionar valores a matriz C
	funcao adicionarC( inteiro mtz1[][], inteiro mtz2[],  inteiro linha )
	{
		// loop para adicionar valores
		para( inteiro j = 0; j < linha; j++ ) {
			mtz1[ j ][ 0 ] = mtz2[ j ] + 5
			mtz1[ j ][ 2 ] = mtz2[ j ] * mtz2[ j ]  
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
		escreva( "A + 5  fatorial     quadrado\n" )
		escreva( "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n" )
		// loop para adicionar valores
		para( inteiro j = 0; j < linha; j++ ) {
			escreva( mtz1[ j ][ 0 ], "\t", mtz1[ j ][ 1 ], "\t\t", mtz1[ j ][ 2 ], "\n" ) 
		} // fim para
	}// fim função para

	// função fatorial
	funcao fatorial( inteiro mtz[][], inteiro vt[], inteiro linha )
	{
		// variável para o valor
		inteiro fat = 1
		// loop para linha
		para( inteiro i = 0; i < linha; i++ )
		{
			// loop para calcular o fatorial
			para( inteiro j = 1; j <= vt[ i ]; j++ )
			{
				// calcular o fatorial
				fat *= j
			} // fim loop
			
			// vetor recebe o valor do fatorial
			mtz[ i ][ 1 ] = fat
			fat = 1 // limpar fat
			
		} // fim for externo
	} // fun função fatorial
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1032; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */