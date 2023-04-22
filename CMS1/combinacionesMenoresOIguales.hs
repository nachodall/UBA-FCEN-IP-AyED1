-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(combinacionesMenoresOiguales(x ::(Integer)))
  }

combinacionesMenoresOiguales :: Integer -> Integer
-- Completar la definición de la función
combinacionesMenoresOiguales n = iteracionI n n 
                               
iteracionI :: Integer -> Integer -> Integer 
iteracionI i j  | i == 1 = iteracionJ 1 j j 
                | otherwise = iteracionJ i j j + iteracionI (i-1) j 

iteracionJ :: Integer -> Integer -> Integer -> Integer
iteracionJ i j n | j == 1 && i > n = 0
                 | j == 1 && i <= n = 1
                 | (i * j) > n = 0 + iteracionJ i (j-1) n
                 | otherwise = 1 + iteracionJ i (j-1) n
-- Pueden agregan las funciones que consideren necesarias


