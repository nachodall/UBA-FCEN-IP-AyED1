{--Implementar la funcion fibonacci: Integer ->Integer que devuelve el i-´esimo n´umero de Fibonacci. Recordar que la secuencia de Fibonacci se define como:
f ib(n) =
0 si n = 0
1 si n = 1
f ib(n − 1) + f ib(n − 2) en otro caso
--}

fibonacci :: Integer -> Integer
fibonacci n | n==0 = 0
            | n==1 = 1
            | otherwise = fibonacci(n-1) + fibonacci(n-2)