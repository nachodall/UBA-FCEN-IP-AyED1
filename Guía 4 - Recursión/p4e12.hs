raizDe2Aprox :: Integer -> Float
raizDe2Aprox n = aprox n - 1

aprox :: Integer -> Float
aprox n | n==1 = 2
        | otherwise = 2 + ( 1 / aprox (n-1) )