-- No editar esta parte
main :: IO ()
main = do
  x <- readLn
  print (sumaMenosQueMax (x :: (Int, Int, Int)))

sumaMenosQueMax :: (Int, Int, Int) -> Bool
-- Completar acá la definición de la función
sumaMenosQueMax (x,y,z) = (maximo (x, y, z)) > ((minimo (x, y, z)) + (medio (x, y, z)))

maxDeDos :: Int -> Int -> Int
maxDeDos x y | x > y = x
             | otherwise = y

minDeDos :: Int -> Int -> Int
minDeDos x y | x < y  = x
             | otherwise = y

maximo :: (Int, Int, Int) -> Int
maximo (x,y,z) | maxDeDos x y > z = maxDeDos x y
               | otherwise = z

minimo :: (Int, Int, Int) -> Int
minimo (x,y,z) | minDeDos x y < z = minDeDos x y
               | otherwise = z

medio :: (Int, Int, Int) -> Int
medio (x,y,z) | x > y && z > x = x
              | y > x && z > y = y
              | y > x && x > z = x
              | y > z && x > y = y
              | otherwise = z
-- Pueden agregan las funciones que consideren necesarias