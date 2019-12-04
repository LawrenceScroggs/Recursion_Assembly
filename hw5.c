// Homework 5 example

#include <stdio.h>
#include <string.h>

long Catalan(long n){
    long sum = 0;
    
    if (n == 0) return 1;
    
    for (int i = 0; i < n; i++){
      sum += Catalan(i) * Catalan(n -i -1);
    
    }
    
    return sum;
  }

int main(int argc, char*argv[])
{

  int n = 4;
  int new_sum;

  new_sum = Catalan(n);

  printf("SUM: "); 
  printf("%d",new_sum);
  printf("\n");


  return 0;

}
