/*
   8) Calcular e imprimir na tela uma matriz de tamanho 10 � 10,
   em que seus elementos s�o da forma:
   A[ i][ j] = 2i + 7j � 2 se i < j
   A[ i][ j] = 3i2 � 1 se i = j
   A[ i][ j] = 4i3 + 5j2 + 1 se i > j
   Backes, Andr�. Linguagem C (p. 129). GEN LTC. Edi��o do Kindle.
   Auto: Pedro Filho, 18/12/2020
*/

#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <locale.h>

#define LINHA 10
#define COLUNA 10

// PROT�TIPOS
void adicionar( int mtz[][ COLUNA ], int linha, int coluna );
void organizar( int mtz[][ COLUNA ], int linha, int coluna );
void mostrar( int mtz[][ COLUNA ], int linha, int coluna );

// FUN��O PRINCIPAL
int main()
{
   // configura para portugu�s Brasil
   setlocale( LC_ALL, "Portuguese" );

   // matriz
   int matriz[ LINHA ][ COLUNA ];

   // CHAMAR fun��o adicionar para atribuir os 100 valores
   adicionar( matriz, LINHA, COLUNA );

   // CHAMAR a fun��o organizar para ordenar os valores conforme orienta��o
   organizar( matriz, LINHA, COLUNA );

   // chamar a fun��o mostrar para exibir a matriz preenchida
   mostrar( matriz, LINHA, COLUNA );

   // pular uma linha
   printf( "\n" );

   // pausar
   system( "pause" );

   // fim do programa
   return 0;

}  // FIM FUN��O MAIN

// fun��o adicionar valores
void adicionar( int mtz[][ COLUNA ], int linha, int coluna )
{
   // gerador
   srand( time( NULL ) );

   //loop para linha
   for( int i = 0; i < linha; i++ ) {

      // loop para a coluna
      for( int j = 0; j < coluna; j++ ) {

         // matriz recebe valores aleat�rios
         mtz[ i ][ j ] = 1 + rand() % 100;

      } // fim for interno
   } // fim for externo
} // fim fun��o

// fun��o organizar
void organizar( int mtz[][ COLUNA ], int linha, int coluna )
{
   // loop para linha
   for( int i = 0; i < linha; i++){

      // loop para a coluna
      for( int j = 0; j < coluna; j++){

         // se linha menor que a clouna
         if( i < j ) {
            // matriz[ i][ j ] = 2i + 7j � 2 se i < j
            mtz[ i ][ j ] = ( 2 * i ) + ( 7 * j ) - 2;
         } // fim if

         // se linha igual a coluna
         else if( i == j ) {
            //matriz[ i][ j] = 3i2 � 1 se i = j
            mtz[ i ][ j ] = ( 3 * ( i * i ) ) - 1;
         } // fim else if

         // se n�o
         else {
            // matriz[ i][ j] = 4i3 + 5j2 + 1 se i > j
            mtz[ i ][ j ] = ( 4 * ( i * i * i ) ) + ( 5 * ( j * j ) ) + 1;
         }  // fim else

      } // fim for interno
   } // fim for externo
} // fim fun��o organizar

// fun��o mostrar
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
} // fim fun��o mostrar
