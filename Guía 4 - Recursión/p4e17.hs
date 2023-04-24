esFibonacci :: Integer -> Bool
esFibonacci n = aux n 0

aux :: Integer -> Integer -> Bool
aux n cont | n == fibonacci cont = True
           | fibonacci cont > n = False
           | otherwise = aux n (cont+1)
        

fibonacci :: Integer -> Integer
fibonacci n | n==0 = 0
            | n==1 = 1
            | otherwise = fibonacci(n-1) + fibonacci(n-2)