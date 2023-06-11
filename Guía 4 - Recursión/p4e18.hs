mayorDigitoPar :: Int -> Int
mayorDigitoPar n = mayorDigitoParAux n (-1)

mayorDigitoParAux :: Int -> Int -> Int
mayorDigitoParAux n max | n == 0 = max
                        | esPar (digito n) && digito n > max = mayorDigitoParAux (sacarUltimo n) (digito n)
                        | otherwise = mayorDigitoParAux (sacarUltimo n) max 

esPar :: Int -> Bool
esPar n = mod n 2 == 0

sacarUltimo :: Int -> Int
sacarUltimo n = div n 10 

digito :: Int -> Int
digito n = mod n 10
