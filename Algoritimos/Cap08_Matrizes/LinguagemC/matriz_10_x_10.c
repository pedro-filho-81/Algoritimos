/*
   8) Calcular e imprimir na tela uma matriz de tamanho 10 × 10,
   em que seus elementos são da forma:
   A[ i][ j] = 2i + 7j – 2 se i < j
   A[ i][ j] = 3i2 – 1 se i = j
   A[ i][ j] = 4i3 + 5j2 + 1 se i > j
   Backes, André. Linguagem C (p. 129). GEN LTC. Edição do Kindle.
   Auto: Pedro Filho, 18/12/2020
*/

#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <locale.h>

#define LINHA 10
#define COLUNA 10

// PROTÓTIPOS
void adicionar( int mtz[][ COLUNA ], int linha, int coluna );
void organizar( int mtz[][ COLUNA ], int linha, int coluna );
void mostrar( int mtz[][ COLUNA ], int linha, int coluna );

// FUNÇÃO PRINCIPAL
int main()
{
   // configura para português Brasil
   setlocale( LC_ALL, "Portuguese" );

   // matriz
   int matriz[ LINHA ][ COLUNA ];

   // CHAMAR função adicionar para atribuir os 100 valores
   adicionar( matriz, LINHA, COLUNA );

   // CHAMAR a função organizar para ordenar os valores conforme orientação
   organizar( matriz, LINHA, COLUNA );

   // chamar a função mostrar para exibir a matriz preenchida
   mostrar( matriz, LINHA, COLUNA );

   // pular uma linha
   printf( "\n" );

   // pausar
   system( "pause" );

   // fim do programa
   return 0;

}  // FIM FUNÇÃO MAIN

// função adicionar valores
void adicionar( int mtz[][ COLUNA ], int linha, int coluna )
{
   // gerador
   srand( time( NULL ) );

   //loop para linha
   for( int i = 0; i < linha; i++ ) {

      // loop para a coluna
      for( int j = 0; j < coluna; j++ ) {

         // matriz recebe valores aleatórios
         mtz[ i ][ j ] = 1 + rand() % 100;

      } // fim for interno
   } // fim for externo
} // fim função

// função organizar
void organizar( int mtz[][ COLUNA ], int linha, int coluna )
{
   // loop para linha
   for( int i = 0; i < linha; i++){

      // loop para a coluna
      for( int j = 0; j < coluna; j++){

         // se linha menor que a clouna
         if( i < j ) {
            // matriz[ i][ j ] = 2i + 7j – 2 se i < j
            mtz[ i ][ j ] = ( 2 * i ) + ( 7 * j ) - 2;
         } // fim if

         // se linha igual a coluna
         else if( i == j ) {
            //matriz[ i][ j] = 3i2 – 1 se i = j
            mtz[ i ][ j ] = ( 3 * ( i * i ) ) - 1;
         } // fim else if

         // se não
         else {
            // matriz[ i][ j] = 4i3 + 5j2 + 1 se i > j
            mtz[ i ][ j ] = ( 4 * ( i * i * i ) ) + ( 5 * ( j * j ) ) + 1;
         }  // fim else

      } // fim for interno
   } // fim for externo
} // fim função organizar

// função mostrar
void mostrar( int mtz[][ COLUNA ], int linha, int coluna )
{
   // loop para a linha
   for(int i = 0; i < linha; i++ ) {

      // loop para a coluna
      for( int j = 0; j < coluna; j++ ) {

         // mostrar
         printf("%6d", mtz[i][j]);

      } // fim for interno

        printf("\n"); // pular uma linha

    } // fim for externo
} // fim função mostrar
