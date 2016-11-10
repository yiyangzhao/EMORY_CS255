
#define EXTERN

#include <stdio.h>
#include <stdlib.h>
#include "header.h"

int i;
int j;

void clearAll(){
	int i;	
	for ( i=0;i<MAX;i++){
		prime[i]=0;
	}	
}

int getin(int bitin){
	return bitin / 32;
}

int getdi(int bitin){
	return bitin % 32;
}

void setBit(int A[], int n){
	A[getin(n)] |= (1<<getdi(n));

}

int isPrime(int A[],int n){
	return ((A[getin(n)] & (1<<getdi(n)))==0);
}


void sieveOfE(int N){

	clearAll;

	setBit(prime,0);
	setBit(prime,1);
		
	for (i=2;i<=N;i++){
		if (isPrime(prime,i)) {
			for (j=i*2; j<=N;j+=i){
				setBit(prime,j);

			}
		}
	}
}

int countPrimes(int N){

	clearAll;
	int counter = 0;
	for (i=2;i<=N;i++){
		counter += isPrime(prime,i)? 1 : 0 ;
	}
	return counter;

}

void printPrimes (int k1, int k2, int N){

	int counter = 0;
	for (i=1;i<=N;i++){
		counter += isPrime(prime,i)? 1 : 0 ;
		
		if (counter>=k1 && counter<=k2 &&isPrime(prime,i) ){
			printf("%d\n",i);
		}

	}


}
