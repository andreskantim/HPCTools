#include "dgesv.h"
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <unistd.h>


int my_dgesv(int n, double *a, double *b)
{
int i,j,k,m;
double *c = (double *) malloc(sizeof(double) * n);
double max, d, sum;


for(j=0; j<n; j++) { //busca el maximo por debajo de la diagonal y lo coloca en la diagonal
max = a[j*(n+1)];
m = j;
    for(k=j+1; k<n; k++) {
        if(fabs(max) < fabs(a[j+n*k])) {
    	    max = a[j+n*k];
   		    m= k;
    	  }
    }


  for(k=0; k<n; k++) {//intercambio de filas
    c[k] = b[n*m+k];
    b[n*m+k] = b[j*n+k];
    b[j*n+k] = c[k];
    c[k] = a[n*m+k];
    a[n*m+k] = a[j*n+k];
    a[j*n+k] = c[k]; 
  }
}


for(j=0; j<n; j++) { //hace 0 todo lo que esta por debajo de la diagonal principal
  for(i=j+1; i<n; i++) {
	  d=a[i*n+j]/a[j*n+j];
		  for(k=0; k<n; k++) {
		  a[i*n+k] -= d*a[j*n+k];
		  b[i*n+k] -= d*b[j*n+k];
		  }
	}
}

const double epsilon2 = 1e-10; 
if (fabs(a[n*n-1])<epsilon2){//busca si la matriz a es singular
  printf("La matriz a es singular y el sistema no tiene solucion unica \n");
return 0;
}

for(k=0;k<n;k++){//Resuelve el problema para cada columna de b
    for(i=n-1;i>=0;i--) {
        sum = 0.0;
        for(j=i+1;j<n;j++) {
            sum += a[i*n+j]*b[j*n+k]; 
        }
        b[i*n+k] = (b[i*n+k]-sum)/a[i*n+i];
    }
}

free(c);
return 0;
}

