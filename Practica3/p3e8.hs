sumUltDosDig :: Integer->Integer
sumUltDosDig x = (x `mod` 10) + ((div x 10) `mod` 10 )

comp :: Integer -> Integer-> Integer
comp a b |sumUltDosDig a < sumUltDosDig b = 1
         |sumUltDosDig a > sumUltDosDig b = -1
         |otherwise = 0