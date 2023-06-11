tomaValorMax :: Int -> Int -> Int --ver que n1 <= n2
tomaValorMax n1 n2 = tomaValorMaxAux n1 n2 0

tomaValorMaxAux :: Int -> Int -> Int -> Int 
tomaValorMaxAux n1 n2 max | n1 == n2 && sumaDivisores n1 > max = sumaDivisores n1 
                          | n1 == n2 = max 
                          | sumaDivisores n1 > max = tomaValorMaxAux (n1+1) n2 (sumaDivisores n1)
                          | otherwise = tomaValorMaxAux (n1+1) n2 max 

sumaDivisores :: Int -> Int
sumaDivisores n = sumaDivisoresAux n 1 

sumaDivisoresAux :: Int -> Int -> Int
sumaDivisoresAux n divisor | divisor == n = divisor 
                           | esDivisor divisor n = divisor + sumaDivisoresAux n (divisor + 1)
                           | otherwise = sumaDivisoresAux n (divisor + 1)
