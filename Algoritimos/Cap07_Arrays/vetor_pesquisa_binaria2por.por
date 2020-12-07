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
		// criar vetores
		inteiro vetorA[ 8 ]
		inteiro vetorB[ 8 ]
	} // fim função principal

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
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 903; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */