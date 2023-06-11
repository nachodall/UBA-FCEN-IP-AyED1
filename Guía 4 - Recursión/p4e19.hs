esSumaInicialDePrimos :: Int -> Bool
esSumaInicialDePrimos 1 = False
esSumaInicialDePrimos n = esSumaAux n 2 1 --2 es la suma hasta el primer primo y 1 es el contador de primos

esSumaAux :: Int -> Int -> Int -> Bool
esSumaAux n suma contPrimos | n == suma = True
                            | n < suma = False
                            | otherwise = esSumaAux n (suma + nEsimoPrimo (contPrimos + 1)) (contPrimos + 1) --actualizo sumandole el siguiente primo y sumando 1 en el contador
