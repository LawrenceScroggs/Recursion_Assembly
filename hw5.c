// Homework 5 example

#include <stdio.h>
#include <string.h>

long Catalan(long n);

int main(int argc, char*argv[])
{

  int n = 3;
  int new_sum;

  new_sum = Catalan(n);

  printf("SUM: "); 
  printf("%d",new_sum);
  printf("\n");


  return 0;

}
