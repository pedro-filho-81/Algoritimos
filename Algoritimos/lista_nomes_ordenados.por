programa
{
	
	funcao inicio()
	{
		// vetor
		cadeia nome[ 5 ]

		adicionar( nome, 5 )

		mostrar( nome, 5 )

		//ordenar( nome, 5 )
		
	} // fim função inicio

	// função adiciona valor
	funcao adicionar( cadeia vt[], inteiro tamanho )
	{
		para( inteiro posicao = 0; posicao < tamanho; posicao++ )
		{
			escreva( "Informe o nome: " )
			leia( vt[ posicao ] )
		} // fim for
	} // fim função adicionar
	// função mostrar valor
	funcao mostrar( cadeia vt[], inteiro tamanho )
	{
		// mostrar vetor
		para( inteiro i = 0; i < tamanho; i++ )
		{
			escreva( vt[ i ], " " )
		} // fim para	
	} // fim função mostrar valor	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 306; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */