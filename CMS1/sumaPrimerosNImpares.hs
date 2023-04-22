-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(sumaPrimerosNImpares(x ::(Integer)))
  }

sumaPrimerosNImpares :: Integer -> Integer
-- Completar la definición de la función
sumaPrimerosNImpares n = sumaPrimerosNImparesAux 1 (2*n -1)

sumaPrimerosNImparesAux :: Integer -> Integer -> Integer
sumaPrimerosNImparesAux inf sup | inf > sup = 0
                                | mod inf 2 == 0 = sumaPrimerosNImparesAux (inf+1) sup
                                | otherwise = (2*inf + 2) + sumaPrimerosNImparesAux (inf+2) sup
-- Pueden agregan las funciones que consideren necesarias


