--1.1
longitud :: [t] -> Integer
longitud []  = 0
longitud (x:xs) = 1 + longitud xs  

--1.2
ultimo :: [t] -> t
ultimo (x:xs) | longitud xs == 0 = x
              | otherwise = ultimo xs

--1.3
s1 = []
principio :: [t] -> [t]
principio (x:xs) = principioAux (x:xs) s1 

principioAux :: [t] -> [t] -> [t]
principioAux (x:xs) s1 | longitud xs == 0 = reverso s1
                       | otherwise = principioAux xs (x:s1)

--1.4
sv = []
reverso :: [t] -> [t]
reverso (x:xs) = reversoAux sv (x:xs)

reversoAux :: [t] -> [t] -> [t]
reversoAux sv sl | longitud sl == 0 = sv  
                 | otherwise = reversoAux (head sl : sv) (tail sl) 

--reversoPM :: [t] -> [t]
--reversoPM [] = []
--reversoPM (x:xs) = (reversoPM x)  ++ [x]
