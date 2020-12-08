programa
{
/*
 * c)Construir um programa que leia 15 elementos numéricos inteiros em 
 * uma matriz A de uma dimensão do tipo vetor. Construir uma matriz B 
 * de mesmo tipo e dimensão, em que cada elemento seja o fatorial 
 * do elemento correspondente armazenado na matriz A. Apresentar 
 * os elementos da matriz B ordenados de forma cres                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               cente.
	JOSE AUGUSTO NAVARRO GARCIA MANZANO. Algoritmos (p. 374). 
	Editora Saraiva. Edição do Kindle. . 
 *Pedro Filho 08/12/2020 
 */
	inclua biblioteca Util --> util
	funcao inicio()
	{
		// constante
		const inteiro TAMANHO = 15
		// criar vetores
		inteiro vetorA[ TAMANHO ]
		inteiro vetorB[ TAMANHO ]
		// variáveis
		inteiro resp = 0, pesq = 0
		
		// chamar a função adicionar valores
		adicionar( vetorA, TAMANHO )
		
		// chamar a função mostrar para vetor A
		ordenar( vetorA, TAMANHO )
		escreva( "Vetor A: " )
		mostrar( vetorA, TAMANHO )

		// chamar a função fatorial
		fatorial( vetorA, vetorB, TAMANHO )
		// chamar a função ordenar
		ordenar( vetorB, TAMANHO )
		
		// CHAMAR A FUNÇÃO MOSTRAR	
		escreva( "\nVetor B fatorial: " )
		mostrar( vetorB, TAMANHO )
		
	} // fim função principal

	// criar função adicionar valor
	funcao adicionar( inteiro vtA[], inteiro tamanho )
	{
		// loop para adicionar valores nos vetores
		para( inteiro i = 0; i < tamanho; i++ )
		{
			// ADICIONAR VALOR NO VETOR A
			vtA[ i ] = util.sorteia(1, 15)
		} // fim função adicionar 
	} // FIM FUNÇÃO ADICIONAR VALORES

	// criar função fatorial
	funcao fatorial( inteiro vt[], inteiro vt1[], inteiro tamanho )
	{
		// variável
		inteiro fat = 1
		// loop esterno percorre o vetor A
		para( inteiro i = 0; i < tamanho; i++ )
		{
			// loop para calcular o fatorial de cada valor do vetor A
			para( inteiro j = 1; j <= vt[ i ]; j++ )
			{
				// calcular o fatorial do vetor A
				fat *= j
			} // fim para interno
			
			// vetor B recebe o Fatorial do vetor A
			vt1[ i ] = fat
			// limpar a variável para novo cálculo
			fat = 1
			
		} // fim para externo
	} // fim função
	
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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2632; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */