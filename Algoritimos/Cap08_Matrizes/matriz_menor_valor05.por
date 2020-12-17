programa
{
	/*
	 * 1) Faça um programa que leia uma matriz de tamanho 3 × 3. 
	 * Imprima na tela o menor valor contido nessa matriz.
		Backes, André. Linguagem C (p. 129). GEN LTC. Edição do Kindle. 
	 * Pedro Filho, 17/12/2020
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
		inteiro menor

		// adicionar valores
		adicionar( matriz, LINHA, COLUNA )

		// mostrar valores
		escreva( "Matriz:\n" )
		mostrar( matriz, LINHA, COLUNA )

		//chamar a função pesquisar e atribuir a menor
		menor = pesquisar( matriz, LINHA, COLUNA )
		// MOSTRAR O MENOR VALOR DA MATRIZ
		escreva("O menor valor é ", menor )
		
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
		inteiro menor = mtz[ 0 ][ 0 ]
		// loop para pesquisar valor
		para( inteiro i = 0; i < linha; i++ )
		{
			para( inteiro j = 0; j < coluna; j++ )
			{
				// se a matriz menor que o menor valor
				se( mtz[ i ][ j ] < menor )
				{
					// menor recebe matriz menor
					menor = mtz[ i ][ j ]
				} // fim se
			} // fim para
		} // fim para externo		
		
		retorne menor
		
	} // fim função pesquisar
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 729; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */