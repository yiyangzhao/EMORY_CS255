#include <stdio.h>
#include <stdlib.h>

  int F(int i, int j, int k, int l)
  {
     int s, t;
     int x;

     printf("  >> ");
     for ( x = 0; x < l; x++ )
        printf("    ");
     printf("F(%d, %d, %d)\n", i, j, k);

    
     if ( i <= 0 || j <= 0 )
        s = -1;
     else if ( i + j < k )
        s = (i+j);
     else
     {
        s = 0;
        for (t = 1; t < k; t++)
        {
           s = s + F(i-t, j-t, k-1, l+1) + 1;
        }
     }
/*
     printf("%d\n", s);
*/
     return(s);
  }

int main(int argc, char **argv)
{
   int i, j, k, s;

   if ( argc != 4 )
   {
      printf("Usage: %s  i  j  k\n", argv[0]);
      exit(1);
   }

   i = atoi(argv[1]);
   j = atoi(argv[2]);
   k = atoi(argv[3]);

   printf("Call sequence:\n");

   s = F(i,j,k,0);

   printf("Ans = %d\n", s);

   return(0);
}
