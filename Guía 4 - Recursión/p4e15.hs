{--Ejercicio 15. Implementar una funcion sumaRacionales :: Integer ->Integer ->Float que dados dos naturales n, m
sume todos los numeros racionales de la forma p/q con 1 ≤ p ≤ n y 1 ≤ q ≤ m --}

sumaRacionales :: Integer -> Integer -> Float
sumaRacionales p q | p == 1 = sumaRacionalesAux 1 q
                   | otherwise = sumaRacionalesAux p q + sumaRacionales (p-1) q 

sumaRacionalesAux :: Integer -> Integer -> Float
sumaRacionalesAux p q | q == 1 = fromIntegral p 
                      | otherwise = (fromIntegral p) / (fromIntegral q) + sumaRacionalesAux p (q-1) 
