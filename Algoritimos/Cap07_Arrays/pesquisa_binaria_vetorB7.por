programa
{
/*
 * g)Elaborar um programa que leia 20 elementos numéricos inteiros 
 * em uma matriz A do tipo vetor. Construir uma matriz B de mesma 
 * dimensão com os mesmos elementos da matriz A, acrescidos de 2. 
 * Colocar os elementos da matriz B em ordem crescente. Montar um 
 * trecho de pesquisa binária para pesquisar os elementos 
 * armazenados na matriz B.
	JOSE AUGUSTO NAVARRO GARCIA MANZANO. Algoritmos (p. 375). 
	Editora Saraiva. Edição do Kindle. 
 *Pedro Filho 09/12/2020 
 */
	inclua biblioteca Util --> util
	funcao inicio()
	{
		// constante
		const inteiro TAMANHO = 20
		// criar vetores
		inteiro vetorA[ TAMANHO ]
		inteiro vetorB[ TAMANHO ]
		// variáveis
		inteiro resp = 0, pesq = 0
		caracter continuar = 's'
		
		enquanto( continuar == 's' ou continuar == 'S' )
		{
			// chamar a funﾃｧﾃ｣o adicionar valores
			adicionar( vetorA, vetorB, TAMANHO ) // 20 elementos para vetor A
					
			// CHAMAR A FUNﾃ�ﾃグ E MOSTRAR VETOR A
			escreva( "Vetor A: " )
			mostrar( vetorA, TAMANHO )

			// colocar em ordem crescente o vetor B
			ordenar( vetorB, TAMANHO )
			// CHAMAR A FUNﾃ�ﾃグ MOSTRAR	
			escreva( "\n\nVetor B: " )
			mostrar( vetorB, TAMANHO )

			// entrada de dados
			escreva( "\n\nInforme o valor a pesquisar: " )
			leia( resp )
			
			// pesq recebe a função pesquisar
			pesq = pesquisar( vetorB, resp, TAMANHO )

			// se pesq for igual a 1
			se( pesq == 1 )
			{
				escreva( resp, " encontrado.\n" )
			} // fim se
			senao
			{ 
				escreva( resp, " não encontrado.\n" )
			}// fim se não
			
			// aguardar decisão do usuário
			escreva( "\nDeseja continuar [S/N]: " )
			leia( continuar )
			limpa() // limpar a tela
			
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
			//adicionar os valores do vetor A acrescido de 2
			vtB[ i ] = vtA[ i ] + 2
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
				/* quando o vetor i estiver ( menor que ) vetor j
				* a ordem é crescente;
				* quando estiver ( maior que ) 
				* a ordem é decrescente
				*/
				se( vt[ i ] < vt[ j ] ) {
					aux = vt[ j ]
					vt[ j ] = vt[ i ]
					vt[ i ] = aux
				} // fim se
			} // fim para interno
		}// fim para externo
	} // fim funﾃｧﾃ｣o ordenar

	// criar a função pesquisa binária
	funcao inteiro pesquisar( inteiro vt[], inteiro pesq, inteiro tamanho )
	{
		// variáveis
		inteiro comeco = 0
		inteiro final = tamanho
		inteiro meio = 0

		// loop para pesquisar o vetor
		para( inteiro i = 0; i < tamanho; i++ )
		{
			// calcular o meio é a metade do tamanho
			meio = ( comeco + final ) / 2
			// se a pesquisa for igual ao vetor
			se( pesq == vt[ i ] )
			{
				// retornar 1 valor encontrado
				retorne 1
			} // fim se
			// se não se pesquisa for menor que vetor
			senao se( pesq < vt[ i ] )
			{
				// meio recebe final mens 1
				meio = final - 1
			} // fim se não se
			// se não
			senao
			{
				// meio recebe começo mais 1
				meio = comeco + 1
			} // fim se não
		} // fim loop for
		
		// retornar menos 1 se valor não encontrado
		retorne -1
	} // fim função pesquisar
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1219; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */