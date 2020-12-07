programa
{
	
	funcao inicio()
	{
		// vetor
		inteiro vetor[ 5 ]
		// variáveis
		inteiro resp = 0, pesq = 0, contar = 0

		enquanto( contar < 5 )
		{
			// chamar função adicionar e atribuir a resp
			resp = adicionar( vetor, 5 )
			// chamar a função pesquisar e atribuir a pesq
			pesq = pesquisar( vetor, resp, 5 )
			// se a resposta igual a pesquisa
			se( resp == pesq )
			{
				// escreva
				escreva( resp, " já cadastrado, tente novamente. \n" )
			} // fim if
			// se não
			senao
			{
				// vetor recebe o valor da resposta
				vetor[ contar ] = resp
				// soma 1 a contar
				contar++
			} // fim se não
		} // fim enquanto

		// chamar a função mostrar
		mostrar( vetor, 5 )
		
		escreva("")
	}
	// função adicionar nome
	funcao inteiro adicionar( inteiro vt[], inteiro tamanho )
	{
		inteiro num = 0
		// entrada de dados 
		escreva( "Digite um número: " )
		leia( num )
		retorne num
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
		// enquanto resposta igual a sim faça
		para( inteiro i = 0; i < tamanho; i++ )
		{
			// se a pesquisa for igual ao vetor
			 se( pesq == vt[ i ] )
			 {
			 	// retorne a paequisa
			 	retorne pesq
			 } // fim if
		} // fim para
		// se não retorne -1 (valor não encontrado)
		retorne -1		
	} // fim função
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 574; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */