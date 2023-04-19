cantDigitos :: Integer -> Integer
cantDigitos n | n < 10 = 1
              | otherwise = 1 + cantDigitos(sacarUltimoDigito)
              where sacarUltimoDigito n = div n 10

              {--
              5678
              1 + cantDigitos(567)
              1 + 1 + cantDigitos(56)
              1 + 1 + 1 + cantDigitos(5)
              1 + 1 + 1 + 1
              4 
              --}