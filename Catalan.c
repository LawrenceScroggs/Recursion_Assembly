// Catalan function


long Catalan(long n){
    long sum = 0;
    
    if (n == 0) return 1;
    
    for (int i = 0; i < n; i++){
      sum += Catalan(i) * Catalan(n -i -1);
    
    }
    
    return sum;
  }

