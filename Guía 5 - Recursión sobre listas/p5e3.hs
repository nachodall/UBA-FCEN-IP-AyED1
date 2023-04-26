<<<<<<< HEAD
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
=======
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

--3.7 pares :: [Integer] -> [Integer] segun la siguiente especificacion: solo tiene los elementos pares de la lista en el orden dado
pares :: [Integer] -> [Integer]
pares [] = []
pares (x:xs) | mod x 2 /= 0 = pares xs
             | otherwise = x : pares xs

--3.8 multiplosDeN :: Integer -> [Integer] -> [Integer] que dado un numero n y una lista xs, devuelve una lista
--con los elementos de xs multiplos de n.
multiplosDeN :: Integer -> [Integer] -> [Integer]
multiplosDeN _ [] = []
multiplosDeN n (x:xs) | mod x n /= 0 = multiplosDeN n xs 
                      | otherwise = x : (multiplosDeN n xs)

--3.9 ordenar :: [Integer] -> [Integer] que ordena los elementos de la lista en forma creciente.
--ordenar :: [Integer] ->
ordenar :: [Integer] -> [Integer]
ordenar [] = []
ordenar [x] = [x]
ordenar (x:y:xs) | x > y = insertarOrdenado y (ordenar (x:xs))
                 | otherwise = insertarOrdenado x (ordenar (y:xs))

insertarOrdenado :: Integer -> [Integer] -> [Integer]
insertarOrdenado n [] = [n]
insertarOrdenado n (x:xs) | n <= x = (n:x:xs)
                          | otherwise = x : (insertarOrdenado n xs)
>>>>>>> d95586d (p5e3)
