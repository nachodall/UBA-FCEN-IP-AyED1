-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(sumaDigitos(x ::(Int)))
  }

sumaDigitos :: Int -> Int
-- Completar la definición de la función
sumaDigitos n | n < 10 = n
              | otherwise = ultimoDigito n + sumaDigitos (sacarUltimoDigito n)

ultimoDigito :: Int -> Int 
ultimoDigito n = mod n 10 

sacarUltimoDigito :: Int -> Int
sacarUltimoDigito n = div n 10
-- Pueden agregan las funciones que consideren necesarias