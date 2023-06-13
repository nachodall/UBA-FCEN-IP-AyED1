--auxiliares
ultimo :: [t] -> t
ultimo (x:xs) | longitud xs == 0 = x
              | otherwise = ultimo xs

longitud :: [t] -> Integer
longitud []  = 0
longitud (x:xs) = 1 + longitud xs  

reverso :: [t] -> [t]
reverso [] = []
reverso (x:xs) = (reverso xs)  ++ [x]

s1 = []
principio :: [t] -> [t]
principio (x:xs) = principioAux (x:xs) s1 

principioAux :: [t] -> [t] -> [t]
principioAux (x:xs) s1 | longitud xs == 0 = reverso s1
                       | otherwise = principioAux xs (x:s1)



--2.1
pertenece :: (Eq t) => t -> [t] -> Bool
pertenece _ [] = False
pertenece n (x:xs) | n == x = True
                   | otherwise = pertenece n xs

--2.2
to2Iguales :: (Eq t) => [t] -> Bool
to2Iguales [] = True
to2Iguales [x] = True
to2Iguales (x:y:xs) | x /= y = False
                    | otherwise = to2Iguales (y:xs) 

--2.3
todosDistintos :: (Eq t) => [t] -> Bool 
todosDistintos [] = False
todosDistintos [x] = True
todosDistintos (x:xs) | x == head xs = False
                      | otherwise = todosDistintos (xs)

--2.4
hayaRepetidos :: (Eq t) => [t] -> Bool
hayaRepetidos [] = False
hayaRepetidos [x] = False
hayaRepetidos (x:xs) | pertenece x xs = True
hayaRepetidos (x:xs) | otherwise = hayaRepetidos xs 

--2.5 quitar :: (Eq t) => t -> [t] -> [t], que dada una lista xs y un elemento x, elimina la primera aparicion de x
quitarUno :: (Eq t) => t -> [t] -> [t]
quitarUno _ [] = []
quitarUno elem (x:xs) | x == elem = xs 
                      | otherwise = x : quitarUno elem xs

--2.6 . quitarTodos :: (Eq t ) => t -> [t] -> [t], que dada una lista xs y un elemento x, elimina todas las apariciones
--de x en la lista xs (de haberlas).

quitarTodos :: (Eq t) => t -> [t] -> [t]
quitarTodos _ [] = []
quitarTodos elem (x:xs) | x == elem = quitarTodos elem xs 
                   | otherwise = x : quitarTodos elem xs

--2.7 eliminarRepetidos :: (Eq t) => [t] -> [t] que deja en la lista una unica aparicion de cada elemento, eliminando
--las repeticiones adicionales

eliminarRepetidos :: (Eq t) => [t] -> [t]
eliminarRepetidos [] = []
eliminarRepetidos (x:xs) | pertenece x xs = x : eliminarRepetidos (quitarTodos x xs)
                         | otherwise = x : eliminarRepetidos xs
                         
--2.8 mismosElementos :: (Eq t) => [t] -> [t] -> Bool, que dadas dos listas devuelve verdadero sı y solamente sı
--ambas listas contienen los mismos elementos, sin tener en cuenta repeticiones, es decir:

mismosElementos :: (Eq t) => [t] -> [t] -> Bool
mismosElementos [] [] = True
mismosElementos [] _ = False
mismosElementos _ [] = False
mismosElementos (x:xs) (y:ys) | x == y = mismosElementos xs ys 
                              | otherwise = False

--2.9 capicua :: (Eq t) => [t] -> Bool 

capicua :: (Eq t) => [t] -> Bool 
capicua [] = True
capicua [x] = True
capicua (x:xs) | x == ultimo xs = capicua (principio xs) --principio devolia lista sin el ultimo elemento (ver auxiliares)
               | otherwise = False
