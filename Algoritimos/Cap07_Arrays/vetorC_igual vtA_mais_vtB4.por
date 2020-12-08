programa
{
/*
 * d)Elaborar um programa que leia uma matriz A com 12 elementos do tipo real. 
 * Após a leitura da matriz A, colocar os seus elementos em ordem crescente. 
 * Depois, fazer a leitura de uma matriz B também com 12 elementos do  
 * tipo real e colocar os elementos em ordem crescente. Construir uma 
 * matriz C, em que cada elemento seja a soma do elemento correspondente 
 * das matrizes A e B. Colocar em ordem decrescente os elementos da matriz C 
 * e apresentar os seus valores.
	JOSE AUGUSTO NAVARRO GARCIA MANZANO. Algoritmos (p. 374). Editora Saraiva. Edição do Kindle. 
 *Pedro Filho 08/12/2020 
 */
	inclua biblioteca Util --> util
	funcao inicio()
	{
		// constante
		const inteiro TAMANHO = 12
		// criar vetores
		inteiro vetorA[ TAMANHO ]
		inteiro vetorB[ TAMANHO ]
		inteiro vetorC[ TAMANHO ]
		// variáveis
		inteiro resp = 0, pesq = 0
		
		// chamar a função adicionar valores
		adicionar( vetorA, TAMANHO )
		adicionar( vetorB, TAMANHO )
		adicionarC( vetorA, vetorB, vetorC, TAMANHO )
		
		// chamar a função mostrar para vetor A
		//ordenar( vetorA, TAMANHO )
		// CHAMAR A FUNÇÃO E MOSTRAR VETOR A
		escreva( "Vetor A: " )
		mostrar( vetorA, TAMANHO )
		
		// chamar a função ordenar
		//ordenar( vetorB, TAMANHO )
		// CHAMAR A FUNÇÃO MOSTRAR	
		escreva( "\nVetor B: " )
		mostrar( vetorB, TAMANHO )
		
		// CHAMAR A FUNÇÃO ORDENAR ÁRA O VETOR C
		//ordenarC( vetorC, TAMANHO )
		// CHAMAR A FUNÇÃO MOSTRAR	
		escreva( "\nVetor c: " )
		mostrar( vetorC, TAMANHO )
		
	} // fim função principal

	// criar função adicionar valor
	funcao adicionar( inteiro vtA[], inteiro tamanho )
	{
		// loop para adicionar valores nos vetores
		para( inteiro i = 0; i < tamanho; i++ )
		{
			// ADICIONAR VALOR NO VETOR A
			vtA[ i ] = util.sorteia(1, 50)
		} // fim função adicionar 
	} // FIM FUNÇÃO ADICIONAR VALORES

	// criar função adicionar valor
	funcao adicionarC( inteiro vtA[],inteiro vtB[],inteiro vtC[], inteiro tamanho )
	{
		// loop para adicionar valores nos vetores
		para( inteiro i = 0; i < tamanho; i++ )
		{
			// ADICIONAR VALOR NO VETOR C
			vtC[ i ] = vtA[ i ] + vtB[ i ]
		} // fim função adicionar 
	} // FIM FUNÇÃO ADICIONAR VALORES
	
	// criar função mostrar
	funcao mostrar( inteiro vt[], inteiro tamanho )
	{
		escreva( "{ " )
		// loop para mostrar o vetor
		para( inteiro i = 0; i < tamanho; i++ )
		{
			// mostrar os valores do vetor
			escreva( vt[ i ], " " )
		} // fim loop mostrar
		escreva( "}" )
	} // fim função

	// função ordenar 
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
	} // fim função ordenar
	
	// função ordenar 
	funcao ordenarC( inteiro vt[], inteiro tamanho )
	{
		inteiro aux = 0
		// loop para organizar o vetor
		para( inteiro i = 0; i < tamanho; i++ )
		{
			para( inteiro j = 0; j < tamanho; j++ )
			{
				se( vt[ i ] > vt[ j ] ) {
					aux = vt[ j ]
					vt[ j ] = vt[ i ]
					vt[ i ] = aux
				} // fim se
			} // fim para interno
		}// fim para externo
	} // fim função ordenar
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2743; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */