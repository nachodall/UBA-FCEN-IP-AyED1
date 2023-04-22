-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(prod(x ::(Integer)))
  }

prod :: Integer -> Integer
-- Completar la definición de la función
prod n = prodAux (2*n) 

prodAux :: Integer -> Integer
prodAux i | i == 1 = 3
          | otherwise = (i^2 + 2*i) * prodAux (i-1)
-- Pueden agregan las funciones que consideren necesarias