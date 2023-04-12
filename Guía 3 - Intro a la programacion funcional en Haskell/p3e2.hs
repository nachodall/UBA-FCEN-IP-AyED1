--a) absoluto
absoluto :: Integer -> Integer
absoluto x | x >= 0 = x
           | otherwise = -x

--b) maxAbsoluto
maxAbsoluto :: Integer -> Integer -> Integer
maxAbsoluto x y | x > y = absoluto(x)
                | y > x = absoluto(y)

--c) maximo3
maximo3 :: Integer -> Integer -> Integer -> Integer
maximo3 x y z | x>=y && x>=z = x
              | y>=x && y>=z = y
              | z>=x && z>=y = z

--d) algunoEs0 
algunoEs0 :: Float -> Float -> Bool
algunoEs0 x y | x==0 || y==0 = True
              | otherwise = False

--f) mismoIntervalo
mismoIntervalo :: Float -> Float -> Bool
mismoIntervalo x y | perteneceIntervalo(x) == perteneceIntervalo(y) = True
                   | otherwise = False
                   

perteneceIntervalo :: Float -> Integer
perteneceIntervalo x | x<=3 = 1
                     | x>3 && x<=7 = 2
                     | x>7 = 3

--h) esMultiploDe

esMultiploDe :: Integer -> Integer -> Bool
esMultiploDe x y | x `mod` y == 0 = True
                 | otherwise = False


--i) digitoUnidades
digitoUnidades :: Integer -> Integer
digitoUnidades x = x `mod` 10

--j) digitoDecenas (en especificacion aclarar de requiere x>9)
digitoDecenas :: Integer -> Integer
digitoDecenas x = digitoUnidades(div x 10)
