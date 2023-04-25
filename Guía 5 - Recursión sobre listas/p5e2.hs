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
todosIguales :: (Eq t) => [t] -> Bool
todosIguales [] = True
todosIguales [x] = True
todosIguales (x:xs) | x /= (head xs)= False
                    | otherwise = todosIguales (xs)  

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
quitar :: (Eq t) => t -> [t] -> [t]
quitar _ [] = []
quitar e [x] | x == e = []
             | otherwise = [x]
quitar e (x:xs) | e == x = xs 
                | otherwise = x : quitar e xs

--2.6 . quitarTodos :: (Eq t ) => t -> [t] -> [t], que dada una lista xs y un elemento x, elimina todas las apariciones
--de x en la lista xs (de haberlas).

quitarTodos :: (Eq t) => t -> [t] -> [t]
quitarTodos _ [] = []
quitarTodos e (x:xs) | e == x = quitarTodos e xs
                     | otherwise = x : quitarTodos e xs

quitarTodos2 :: (Eq t) => t -> [t] -> [t] -> [t]
quitarTodos2 _ [] listaNueva = listaNueva
quitarTodos2 e (x:xs) listaNueva | e == x = quitarTodos2 e xs listaNueva
                                 | otherwise = quitarTodos2 e xs (listaNueva ++ [x])

--2.7 eliminarRepetidos :: (Eq t) => [t] -> [t] que deja en la lista una unica aparicion de cada elemento, eliminando
--las repeticiones adicionales

eliminarRepetidos :: (Eq t) => [t] -> [t]
eliminarRepetidos lista = eliminarRepetidosAux lista []

eliminarRepetidosAux :: (Eq t) => [t] -> [t] -> [t]
eliminarRepetidosAux [] listaNueva = listaNueva 
eliminarRepetidosAux (x:xs) listaNueva | pertenece x listaNueva = eliminarRepetidosAux xs listaNueva 
                                       | otherwise = eliminarRepetidosAux xs (listaNueva ++ [x])

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
