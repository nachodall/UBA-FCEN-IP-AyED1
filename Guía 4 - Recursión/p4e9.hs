{--Ejercicio 9. Implementar una funcion esCapicua :: Integer ->Bool que dado n ∈ N≥0 determina si n es un numero
capicua.--}

esCapicua :: Integer -> Bool
esCapicua n | n < 10 = True
            | otherwise = (primerDigito (n) == ultimoDigito (n)) && (primerDigito (reducirNumero n) == ultimoDigito (reducirNumero n))

reducirNumero :: Integer -> Integer
reducirNumero n = sacarPrimerDigito (sacarUltimoDigito (n))

ultimoDigito :: Integer -> Integer
ultimoDigito n = mod n 10

primerDigito :: Integer -> Integer
primerDigito n | n < 10 = n
               | otherwise = primerDigito (div n 10)

sacarUltimoDigito :: Integer -> Integer
sacarUltimoDigito n = div n 10

sacarPrimerDigito :: Integer -> Integer
sacarPrimerDigito n =  mod n (10 ^ ((cantDigitos n) - 1))

cantDigitos :: Integer -> Integer
cantDigitos n | n < 10 = 1
              | otherwise = 1 + cantDigitos(sacarUltimoDigito n)