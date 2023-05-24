import sys

def fibonacciNoRecursivo(n: int) -> int:
  if n <= 0:
   return 0
  if n == 1:
    return 1
  
  #para el fibo de 2 quedan asi los valores
  ant: int = 1
  act: int = 1
  i: int = 2 
  sig: int = 1 #ver q fibo de 2 da 1

  #a partir
  while i < n:
    sig = ant + act
    ant = act
    act = sig 
    i+=1

  return sig 




if __name__ == '__main__':
  x = int(input())
  print(fibonacciNoRecursivo(x))