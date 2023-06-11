{--Implementar y dar el tipo de las siguientes funciones--}

--a)
f1 :: Int -> Int
f1 n = f1Aux n 0

f1Aux :: Int -> Int -> Int
f1Aux n i | n == i = 2^i 
          | otherwise = 2^i + f1Aux n (i+1)
--b)
f2 :: Int -> Float -> Float
f2 n q | n == 1 = q^n 
       | otherwise = q^n + f2 (n-1) q

--c)
f3 :: Int -> Float -> Float
f3 n q = f2 (2*n) q

--d)
f4 :: Int -> Float -> Float
f4 n q = f4Aux n (2*n) q 

f4Aux :: Int -> Int -> Float -> Float
f4Aux i n q | i == n = q^i 
            | otherwise = q^i + f4Aux (i+1) n q 
