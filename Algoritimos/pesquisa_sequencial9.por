programa
{
	
	funcao inicio()
	{
		// vetor
		cadeia nome[ 5 ]
		// variáveis
		cadeia resp, pesq;

		// chamar função adicionar
		adicionar( nome, 5 )
		// chamar a função mostrar
		mostrar( nome, 5 )
		
		escreva("")
	}
	// função adicionar nome
	funcao adicionar( cadeia vt[], inteiro tamanho )
	{
		// loop para adicionar valores
		para( inteiro posicao = 0; posicao < tamanho; posicao++ )
		{
			// entrada de dados 
			escreva( "Digite um nome: " )
			leia( vt[ posicao ] )
		} // fim para
	} // fim função
	// função mostrar
	funcao mostrar( cadeia vt[], inteiro tamanho )
	{ 
		// loop para mostrar valores do vetor
		para( inteiro posicao = 0; posicao < tamanho; posicao++ )
		{
			escreva(  vt[ posicao ], " " )
		} // fim para
	} // fim função
	// função pesquisar
	funcao pesquisar( cadeia vt[], cadeia pesq, inteiro tamanho )
	{
		// variáveis
		caracter resp = 's'
		logico achou = falso
		inteiro 
		

		// enquanto resposta igual a sim faça
		enquanto( resp == 's' ou resp == 'S' )
		{
			 se( pesq == vt[ i ] )
			 {
			 	retorne pesq
			 }
			 se nao
			 {
			 	retorne vt[ 
			 }
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 919; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */