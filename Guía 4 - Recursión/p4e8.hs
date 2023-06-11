cantDigitos :: Integer -> Integer
cantDigitos n | n < 10 = 1
              | otherwise = 1 + cantDigitos(sacarUltimoDigito)
              where sacarUltimoDigito n = div n 10
              
iesimoDigito :: Int -> Int -> Int
iesimoDigito n i = mod (div n (10 ^ ((cantDigitos n) - i))) 10

          
