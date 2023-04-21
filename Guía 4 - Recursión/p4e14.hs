{--Implementar una funcion sumaPotencias :: Integer ->Integer ->Integer ->Integer que dados tres
naturales q, n, m sume todas las potencias de la forma q ^ (a+b)
con 1 ≤ a ≤ n y 1 ≤ b ≤ m.
--}

sumaPotencias :: Integer -> Integer -> Integer -> Integer
sumaPotencias q a b | a==1 = sumaPotenciasAuxiliar q 1 b
                    | otherwise = sumaPotenciasAuxiliar q a b + sumaPotencias q (a-1) b

sumaPotenciasAuxiliar :: Integer -> Integer -> Integer -> Integer
sumaPotenciasAuxiliar q a b | b==1 = q^(a+b)
                            | otherwise = q^(a+b) + sumaPotenciasAuxiliar q a (b-1)