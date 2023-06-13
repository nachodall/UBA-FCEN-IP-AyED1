--auxiliares
longitud :: [a] -> Int
longitud [] = 0
longitud [x] = 1
longitud (x:xs) = 1 + longitud xs

sacarPrimerBlanco :: [Char] -> [Char]
sacarPrimerBlanco [] = []
sacarPrimerBlanco (x:xs) | x == ' ' = xs
                         | otherwise = (x:xs)


--4.1 sacarBlancosRepetidos :: [Char] -> [Char], que reemplaza cada subsecuencia de blancos contiguos de la primera lista por un solo blanco en la segunda lista.
-- ej: [h,o,l,a, , ,a] -> [h,o,l,a, ,a]
sacarBlancosRepetidos :: [Char] -> [Char]
sacarBlancosRepetidos [] = []
sacarBlancosRepetidos [x] = [x]
sacarBlancosRepetidos (x:y:xs) | x ==' ' && y==' ' = sacarBlancosRepetidos (xs) 
                               | otherwise = x : sacarBlancosRepetidos (y:xs)

--4.2 contarPalabras :: [Char] -> Integer, que dada una lista de caracteres devuelve la cantidad de palabras que tiene.
contarPalabras :: [Char] -> Int 
contarPalabras lista = contarPalabrasAux (sacarBlancosRepetidos (sacarPrimerBlanco (lista))) --de esta forma ingreso una lista que no me trae problemas al contar los blancos y que no me modifican la cant de palabras

contarPalabrasAux :: [Char] -> Int
contarPalabrasAux [] = 0
contarPalabrasAux [x] = 1 
contarPalabrasAux (x:xs) | x == ' ' = 1 + contarPalabrasAux (xs)
                         | otherwise = contarPalabrasAux xs

--4.3 palabraMasLarga :: [Char] -> [Char], que dada una lista de caracteres devuelve su palabra mas larga.
palabraMasLarga :: [Char] -> [Char]
palabraMasLarga l = palabraMasLargaAux (sacarBlancosRepetidos l) [] []

palabraMasLargaAux :: [Char] -> [Char] -> [Char] -> [Char]
palabraMasLargaAux [] max _ = max 
palabraMasLargaAux (x:xs) max aux | x == ' ' && longitud aux > longitud max = palabraMasLargaAux xs aux []
                                  | x == ' ' = palabraMasLargaAux xs max []
                                  | otherwise = palabraMasLargaAux xs max (aux +


--4.4 . palabras :: [Char] -> [[Char]], que dada una lista arma una nueva lista con las palabras de la lista original.
--[h,o,l,a, ,j,u,a,n] -> [[hola],[juan]]
palabras :: [Char] -> [[Char]]
palabras lista = palabrasAux lista []

palabrasAux :: [Char] -> [Char] -> [[Char]]
palabrasAux [] actual = [actual]
palabrasAux (x:xs) actual | x /= ' ' = (palabrasAux xs (actual ++ [x]))
                          | x == ' ' = [actual] ++ (palabrasAux xs []) 

--4.5 aplanar :: [[Char]] -> [Char], que a partir de una lista de palabras arma una lista de caracteres concatenandolas.
--["hola","juan"] -> "hola juan"
aplanar :: [[Char]] -> [Char]
aplanar [] = " "
aplanar [x] = x
aplanar (x:xs) = x ++ aplanar xs

--4.6 aplanarConBlancos :: [[Char]] -> [Char], que a partir de una lista de palabras, arma una lista de caracteres concatenandolas e insertando un blanco entre cada palabra.
aplanarConBlancos :: [[Char]] -> [Char]
aplanarConBlancos [] = " "
aplanarConBlancos [x] = x
aplanarConBlancos (x:xs) = x ++ " " ++ aplanarConBlancos xs

--4.7 aplanarConNBlancos :: [[Char]] -> Integer -> [Char], que a partir de una lista de palabras y un entero n, arma una lista de caracteres concatenandolas e insertando n blancos entre cada palabra (n debe ser no negativo).
aplanarConNBlancos :: [[Char]] -> Integer -> [Char]
aplanarConNBlancos [] _ = " "
aplanarConNBlancos [x] _ = x
aplanarConNBlancos (x:xs) n = x ++ printNBlancos n ++ aplanarConNBlancos xs n

printNBlancos :: Integer -> [Char]
printNBlancos 1 = [' ']
printNBlancos n = ' ' : printNBlancos (n-1)


