programa
{
	/*
	 * e)Efetuar o cálculo e apresentar o valor de uma prestação de 
	 * um bem em atraso, utilizando a fórmula 
	 * PRESTAÇÃO ← VALOR + (VALOR * (TAXA / 100) * TEMPO).
		JOSE AUGUSTO NAVARRO GARCIA MANZANO. Algoritmos (p. 132). Editora Saraiva. 
		Edição do Kindle.  * 
	 * Autor: Pedro Filho, 29/11/2020
	 */
	 inclua biblioteca Matematica --> mt
	funcao inicio()
	{
		//variáveis
		real capital, taxa, prestacao, juros, montante
		inteiro tempo
		real vl1, vl2
		// entrada de dados
		escreva( "Informe o valor principal R$" )
		leia( capital )
		escreva( "Taxa de juros: " )
		leia( taxa )
		escreva( "Em quantas prestações? " )
		leia( tempo )
		
		// calcular
		taxa /= 100
		vl1 = mt.potencia((1 + taxa ), tempo) * taxa
		vl2 = mt.potencia((1 + taxa ), tempo) - 1
		prestacao = capital * ( vl1 / vl2 )
		montante = prestacao * tempo
		juros = montante - capital
	
		// mostra resultado
		escreva( "\n{ ANALISANDO DO FINANCIAMENTO }" )
		escreva( "\nValor tomado R$ ", mt.arredondar(capital, 2), "\n" )
		escreva( "Taxa cobrada: ", mt.arredondar(taxa, 6), "%\n" )
		escreva( "Tempo para pagamento: ", tempo, "meses\n" )
		escreva( "Valor das prestações R$", mt.arredondar(prestacao, 2), "\n" )
		escreva( "Juros cobrado R$", mt.arredondar(juros, 2), "\n" )
		escreva( "Valor final R$", mt.arredondar(montante, 2), "\n" )
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 765; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */