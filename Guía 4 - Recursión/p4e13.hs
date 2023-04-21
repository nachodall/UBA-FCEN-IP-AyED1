{--
sum 
--}
f :: Integer -> Integer -> Integer
f i j | i==1 = fAux 1 j 
      | otherwise = fAux i j + f(i-1) j

fAux :: Integer -> Integer -> Integer
fAux i j | j == 1 = i 
         | otherwise = i^j + fAux i (j-1)
         



