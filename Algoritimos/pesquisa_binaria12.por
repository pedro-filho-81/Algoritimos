programa
{
	// Algoritimo usado para pesquisa binária, 
	// é o ideal para grandes ARRAYS
	//Autor: Pedro Filho, 07/12/2020
	inclua biblioteca Util --> util
	funcao inicio()
	{
		// vetor
		inteiro vetor[ 5 ]
		// variáveis
		inteiro resp = 0, pesq = 0, contar = 0
		caracter parar = 'n'
		// chamar função adicionar e atribuir a resp
		adicionar( vetor, 5 )
		mostrar( vetor, 5 )

		enquanto( parar != 's' ou parar != 'S' )
		{
			escreva( "\nInforme o número entre 1 e 30: " )
			leia( resp )
			// chamar a função pesquisar e atribuir a pesq
			pesq = pesquisar( vetor, resp, 5 )
			// se a resposta igual a pesquisa
			se( pesq == resp )
			{
				escreva( resp, " já cadastrado.\n" )
			} // fim if
			senao
			{
				escreva( "Valor não encontrado. Tente novemente." )
			}
						
		} // fim enquanto

		// chamar a função mostrar
		mostrar( vetor, 5 )
		
	} // fim função inicio
	
	// função adicionar nome
	funcao adicionar( inteiro vt[], inteiro tamanho )
	{
		// loop para adicionar valores ao vetor
		para( inteiro i = 0; i < tamanho; i++ )
		{
			// vetor recebe número aleatório entre 1 e 30
			vt[ i ] = util.sorteia(1, 30)
		} // fim para
	} // fim função
	
	// função mostrar
	funcao mostrar( inteiro vt[], inteiro tamanho )
	{ 
		// loop para mostrar valores do vetor
		para( inteiro posicao = 0; posicao < tamanho; posicao++ )
		{
			escreva(  vt[ posicao ], " " )
		} // fim para
	} // fim função
	
	// função pesquisar
	funcao inteiro pesquisar( inteiro vt[], inteiro pesq, inteiro tamanho )
	{
		// variáveis
		inteiro comeco = 0
		inteiro meio = 0
		inteiro fim = tamanho
		// enquanto inicio menor ou igual ao fim faça
		enquanto( comeco <= fim )
		{
			// achar o elemento do meio
			meio = ( fim + comeco ) / 2
			// se pesquisar igual ao vetor
			se( pesq == vt[ meio ] )
			{
				// retornar meio
				retorne meio		
			} // fim se
			// se não, se pesquisar menor que vetor
			senao se( pesq < vt[ meio ] )
			{
				// fim recebe o valor meio meno 1
				fim = meio - 1
			} // fim se não se
			// se não
			senao
			{
				// começo recebe meio mais 1
				comeco = meio + 1
			} // fim se não			
		} // fim enquanto
		// retorne -1 ( valor não encontrado )
		retorne -1
	} // fim função pesquisar
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 769; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */