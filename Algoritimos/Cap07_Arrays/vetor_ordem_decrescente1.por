programa
{
/*
	a)Elaborar um programa que leia 12 elementos numéricos 
	inteiros em uma matriz do tipo vetor. Coloque-os em ordem 
	decrescente e apresente os elementos ordenados.
	JOSE AUGUSTO NAVARRO GARCIA MANZANO. Algoritmos (p. 374). 
	Editora Saraiva. Edição do Kindle.
	Pedro Filho, 07/12/2020 
*/
	inclua biblioteca Util --> util
	funcao inicio()
	{
		// vetor
		inteiro vetor[ 12 ]

		// chamar a função adicionar valores
		adicionar( vetor, 12 )
		// chamar a função mostrar valores
		escreva( "\nVetor original: " )
		mostrar( vetor, 12 )
		// chamar função ordenar valores em ordem decrescente
		ordenar( vetor, 12 )
		// chamar a função mostra valores
		escreva( "\nVetor em ordem decrescente: " )
		mostrar( vetor, 12 )
	} // função principal

	// função adicionar valor
	funcao adicionar( inteiro vt[], inteiro tamanho )
	{
		// loop para adicionar valores aleatórios ao vetor
		para( inteiro i = 0; i < tamanho; i++ )
		{
			// adicionar valores aleatórios ao vetor
			vt[ i ] = util.sorteia(1, 50)
		} // fim para
	} // fim função adicionar valores

	// função mostrar valores
	funcao mostrar( inteiro vt[], inteiro tamanho )
	{
		// loop para mostrar os valores do vetor
		para( inteiro i = 0; i < tamanho; i++ )
		{
			// mostrar os valores do vetor
			escreva( vt[ i ], " " )
		} // fim do loop mostrar valor
	} // fim função

	// função para ordenar valores do vetor
	funcao ordenar( inteiro vt[], inteiro tamanho )
	{	
		// variável
		inteiro auxiliar
		// loops para ordenar o vetor
		para( inteiro i = 0; i < tamanho; i++ )
		{
			para( inteiro j = 0; j < tamanho; j++ )
			{
				// se vetor i maior que vetor j
				se( vt[ i ] > vt[ j ] )
				{
					auxiliar = vt[ j ]
					vt[ j ] = vt[ i ]
					vt[ i ] = auxiliar
				} // fim se
			} // fim para interno
		} // fim para externo
	} // fim função ordenar
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 762; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */