--1.1
longitud :: [t] -> Integer
longitud []  = 0
longitud (x:xs) = 1 + longitud xs  

--1.2
ultimo :: [t] -> t
ultimo (x:xs) | longitud xs == 0 = x
              | otherwise = ultimo xs

--1.3
principio::[t]->[t]
principio [x] = []
principio (x:xs) = x : principio xs

--1.4
reverso::[t]->[t]
reverso [] = []
reverso (x:xs) = reverso xs ++ [x]
--------------------------------------

