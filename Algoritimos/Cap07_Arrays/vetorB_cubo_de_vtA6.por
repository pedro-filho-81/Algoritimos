programa
{
/*
 * f)Elaborar um programa que leia 30 elementos numéricos reais em uma matriz A 
 * do tipo vetor. Construir uma matriz B de mesmo tipo, observando 
 * a seguinte lei de formação: todo elemento da matriz B deve ser o cubo 
 * do elemento correspondente da matriz A. Montar o trecho de pesquisa 
 * sequencial para pesquisar os elementos armazenados na matriz B.
	JOSE AUGUSTO NAVARRO GARCIA MANZANO. Algoritmos (p. 375). Editora Saraiva. Edição do Kindle. 
 *Pedro Filho 08/12/2020 
 */
	inclua biblioteca Util --> util
	funcao inicio()
	{
		// constante
		const inteiro TAMANHO = 30
		// criar vetores
		inteiro vetorA[ TAMANHO ]
		inteiro vetorB[ TAMANHO ]
		// variáveis
		inteiro resp, pesq
		caracter continuar = 's'
		
		enquanto( continuar == 's' ou continuar == 'S' )
		{
			// chamar a funﾃｧﾃ｣o adicionar valores
			adicionar( vetorA, vetorB, TAMANHO ) // 20 elementos para vetor A
					
			// CHAMAR A FUNﾃ�ﾃグ E MOSTRAR VETOR A
			escreva( "Vetor A: " )
			mostrar( vetorA, TAMANHO )
			
			// CHAMAR A FUNﾃ�ﾃグ MOSTRAR	
			escreva( "\nVetor B: " )
			mostrar( vetorB, TAMANHO )
		
			escreva( "\nInforme o valor a pesquisar: " )
			leia( resp )
			// chamar a função pesquisar
			pesq = pesquisar( vetorB, resp, TAMANHO )
			// se a pesquisa for igual a resposta
			se( pesq == 1 )
			{
				escreva( resp, " encontrado.\n" )
			} // fim se
			//se não
			senao
			{
				escreva( resp, " não encontrado.\n" )
			} // fim se não
	
			escreva( "Deseja continuar [S/N]: " )
			leia( continuar )
			limpa()
			
		} // fim enquanto
		
	} // fim funﾃｧﾃ｣o principal

	// criar funﾃｧﾃ｣o adicionar valor
	funcao adicionar( inteiro vtA[], inteiro vtB[], inteiro tamanho )
	{
		// loop para adicionar valores nos vetores
		para( inteiro i = 0; i < tamanho; i++ )
		{
			// ADICIONAR VALOR NO VETOR A
			vtA[ i ] = util.sorteia(1, 50)
			vtB[ i ] = vtA[ i ] * vtA[ i ] * vtA [ i ]
		} // fim funﾃｧﾃ｣o adicionar 
	} // FIM FUNﾃ�ﾃグ ADICIONAR VALORES
	
	// criar funﾃｧﾃ｣o mostrar
	funcao mostrar( inteiro vt[], inteiro tamanho )
	{
		escreva( "{ " )
		// loop para mostrar o vetor
		para( inteiro i = 0; i < tamanho; i++ )
		{
			// se multiplo de 10 pule uma linha
			se( i % 10 == 0 ) escreva( "\n" )
			// mostrar os valores do vetor
			escreva( vt[ i ], " " )
		} // fim loop mostrar
		escreva( "}" )
	} // fim funﾃｧﾃ｣o
	
	// funﾃｧﾃ｣o ordenar 
	funcao ordenar( inteiro vt[], inteiro tamanho )
	{
		inteiro aux = 0
		// loop para organizar o vetor
		para( inteiro i = 0; i < tamanho; i++ )
		{
			para( inteiro j = 0; j < tamanho; j++ )
			{
				se( vt[ i ] < vt[ j ] ) {
					aux = vt[ j ]
					vt[ j ] = vt[ i ]
					vt[ i ] = aux
				} // fim se
			} // fim para interno
		}// fim para externo
	} // fim funﾃｧﾃ｣o ordenar

	// função pesquisar
	funcao inteiro pesquisar( inteiro vt[], inteiro pesq, inteiro tamanho )
	{
		// loop para pesquisar valores no vetor
		para( inteiro i = 0; i < tamanho; i++ )
		{
			// se a pesquisa igual ao vetor
			se( pesq == vt[ i ] )
			{
				retorne 1
			} // fim se
		} // fim para
		retorne -1
	} // fim função pesquisar
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1529; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */