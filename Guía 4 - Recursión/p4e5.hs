{--Implementar la funcion medioFact :: Integer ->Integer que dado n ∈ N calcula n!! = n (n−2)(n−4)· · · .
--}

medioFact :: Integer -> Integer
medioFact n | n==0 = 1
            | otherwise = n * medioFact(n-2)