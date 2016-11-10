
#define EXTERN

#include <stdio.h>
#include <stdlib.h>
#include "header.h"


int main(int argc, char *argv[])
{
   int N, numOfPrimes;

   if ( argc == 1 )
   {
      fprintf(stderr, "Usage: %s  N\n", argv[0]);
      fprintf(stderr, " - you must specify the max. range of numbers to test (N)\n");
      fprintf(stderr, " - Example: %s 1000000\n", argv[0]);
      exit(1);
   }

	

   N = atoi( argv[1] );			// Convert argv[1] to integer

	

   sieveOfE( N );			// Call sieveOfE()

   numOfPrimes = countPrimes( N );	// Find # primes

   printf("Number of primes found = %d\n", numOfPrimes );

   /* -------------------------------------------------------------------
      Print the last 10 primes found
      ------------------------------------------------------------------- */
   if ( N > 30 )
      printPrimes( numOfPrimes-10, numOfPrimes, N );
}
