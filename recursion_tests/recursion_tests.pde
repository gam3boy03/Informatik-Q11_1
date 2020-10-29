void setup(){
  rec_fib(200);
}

int rec_fact(int n){
  if(n == 0) return 1;
  else return rec_fact(n-1) * n;
}

int iter_fact(int n){
  int out = 1;
  for(int i = 2; i < n; i++){
    out *= i;
  }
  return out;
}

int rec_ggT(int a, int b){
  if(b == 0) return a;
  return rec_ggT(b, a % b);
}


int iter_ggT(int a, int b){
  int smaller = a;
  if(smaller > b) smaller = b;
  
  for(int i = smaller; i > 0; i--)
    if(a % i == 0 && b % i == 0) return i;
  return 0;
}

void rec_fib(int max){
  rec_fib(0,1,max);
}

void rec_fib(int a, int b, int max){
  int temp = b;
  b = a+b;
  a = temp;
  println(a);
  if(b <= max && a <= max) rec_fib(a,b,max);
}

void iter_fib(int max){
  for(int a = 0, b = 1, temp; a <= max && b <= max; temp = b, b = a + b, a = temp)
    println(b);
}
