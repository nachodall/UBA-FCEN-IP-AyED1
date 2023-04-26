--auxiliares
longitud :: [t] -> Integer
longitud []  = 0
longitud (x:xs) = 1 + longitud xs  

ultimo :: [t] -> t 
ultimo [x] = x
ultimo (x:xs) = ultimo xs

-- 3.1 sumatoria :: [Integer] -> Integer segun la siguiente especificacion:
sumatoria :: [Integer] -> Integer
sumatoria (x:xs) | longitud xs == 0 = x 
                 | otherwise = x + sumatoria xs

--3.2 productoria :: [Integer] -> Integer segun la siguiente especificacion:
productoria :: [Integer] -> Integer
productoria (x:xs) | longitud xs == 0 = x 
                   | otherwise = x * productoria xs

--3.3 maximo :: [Integer] -> Integer segun la siguiente especificacion:
maximo :: [Integer] -> Integer
maximo [x] = x
maximo (x:y:xs) | x > y = maximo (x:xs)  
                | otherwise = maximo (y:xs)

--3.4 sumarN :: Integer -> [Integer] -> [Integer] segun la siguiente especificacion:
sumarN :: Integer -> [Integer] -> [Integer]
sumarN _ [] = []
sumarN n (x:xs) = (x + n) : sumarN n xs

--3.5 sumarElPrimero :: [Integer] -> [Integer] segun la siguiente especificacion:
sumarElPrimero :: [Integer] -> [Integer]
sumarElPrimero (x:xs) = sumarN x (x:xs)

--3.6 sumarElUltimo :: [Integer] -> [Integer] segun la siguiente especificacion:
sumarElUltimo :: [Integer] -> [Integer]
sumarElUltimo (x:xs) = sumarN (ultimo xs) (x:xs)
