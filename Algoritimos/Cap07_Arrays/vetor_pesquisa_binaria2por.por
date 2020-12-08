programa
{
/*
 * b)Elaborar um programa que leia oito elementos numéricos inteiros 
 * em uma matriz A de uma dimensão do tipo vetor. Construir 
 * uma matriz B de mesmos tipo e dimensão com os elementos da matriz A 
 * multiplicados por 5. Montar uma rotina de pesquisa binária para pesquisar 
 * os elementos armazenados na matriz B.
  JOSE AUGUSTO NAVARRO GARCIA MANZANO. Algoritmos (p. 374). 
  Editora Saraiva. Edição do Kindle. 
 *Pedro Filho 07/12/2020 
 */
	inclua biblioteca Util --> util
	funcao inicio()
	{
		// constante
		const inteiro TAMANHO = 8
		// criar vetores
		inteiro vetorA[ TAMANHO ]
		inteiro vetorB[ TAMANHO ]
		// variável
		inteiro resp = 0, pesq = 0
		
		// chamar a função adicionar valores
		adicionar( vetorA, vetorB, TAMANHO )
		
		// chamar a função mostrar para vetor A
		escreva( "Vetor A: " )
		mostrar( vetorA, TAMANHO )
		// chamar a função mostrar para vetor B
		escreva( "\nVetor B: " )
		mostrar( vetorB, TAMANHO )

		// chamar a função ordenar para o vetor B
		ordenar( vetorB, TAMANHO )
		// chamar a função mostrar para o vetor B ordenado
		escreva( "\nVetor B ordenado: " )
		mostrar( vetorB, TAMANHO )

		// entrada de dados do usário
		escreva( "\nDigite o valor para pesquisar? " )
		leia( resp )

		// chamar a função  pesquisar e atribuir a variável pesq
		pesquisar( vetorB, resp, TAMANHO )
		
	} // fim função principal

	// criar função adicionar valor
	funcao adicionar( inteiro vtA[], inteiro vtB[], inteiro tamanho )
	{
		// loop para adicionar valores nos vetores
		para( inteiro i = 0; i < tamanho; i++ )
		{
			//
			vtA[ i ] = util.sorteia(1, 50)
			vtB[ i ] = vtA[ i ] * 5
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

	// criar a função organizar dados
	funcao ordenar( inteiro vt[], inteiro tamanho )
	{
		// variável
		inteiro aux
		// loop para ordenar um vetor
		para( inteiro i = 0; i < tamanho; i++ )
		{
			para( inteiro j = 0; j < tamanho; j++ )
			{
				se( vt[ i ] < vt[ j ] )
				{
					aux = vt[ j ]
					vt[ j ] = vt[ i ]
					vt[ i ] = aux
				} // fim se
			} // fim para interno
		} // fim para externo
	} // fim função ordenar

	// criar a função pesquisa binária
	funcao vazio pesquisar( inteiro vt[], inteiro pesq, inteiro tamanho )
	{
		// variáveis
		inteiro comeco = 0
		inteiro final = tamanho
		inteiro meio = 0
		logico achou = falso

		// loop para pesquisar valores enquanto o começo for menor que o final
		enquanto( comeco < final e achou == falso )
		{
			// achar o meio do vetor
			meio = ( comeco + final ) / 2
			// verificar se o valor se encontra no vetor
			se( pesq == vt[ meio ] )
			{
				// se verdade achou se torna verdadeiro
				achou = verdadeiro	
			} // se não verificar se o valor da pesquisa é menor que vetor
			senao se( pesq < vt[ meio ] )
			{
				// se verdade final recebe o valor do meio menos 1
				final = meio - 1
			}
			// se não
			senao
			{
				// comeco recebe meio mais 1
				comeco = meio + 1
			} // fim se não
		} // fim enquanto
		
		// se achou for verdadeiro
		se( achou == verdadeiro ) {
			// mostrar
			escreva( pesq, " foi localizado na posição ", meio + 1, "\n" )
		} // fim se
		// se achou for falso
		senao {
			// mostrar
			escreva( pesq, " não localizado.\n" )
		} // fim senao
		
	} // fim função
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2706; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */