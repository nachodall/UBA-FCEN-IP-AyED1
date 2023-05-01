--auxiliares
type Set a = [a]


--6.1 agregarATodos :: Integer -> Set (Set Integer) -> Set (Set Integer) que dado un numero n y un conjunto
--de conjuntos de enteros cls agrega a n en cada conjunto de cls.
agregarATodos :: Integer -> Set (Set Integer) -> Set (Set Integer)
agregarATodos _ [] = []
agregarATodos n [x] = [agregarATodosAux n x]
agregarATodos n (x:xs) = (agregarATodosAux n x) : agregarATodos n xs

agregarATodosAux :: Integer -> Set Integer -> Set Integer
agregarATodosAux n [] = [n]
agregarATodosAux n (x:xs) = (n:x:xs)

--6.2 partes :: Integer -> Set (Set Integer) que genere todos los subconjuntos del conjunto {1, 2, . . . , n}. Por ejemplo
--partes 2 es [[], [1], [2], [1, 2]].
partes :: Integer -> Set (Set Integer)
partes 0 = [[]]
partes n = partes (n-1) ++ agregarATodos n (partes (n-1))

--6.3 productoCartesiano :: Set Integer -> Set Integer -> Set (Integer, Integer)
productoCartesiano :: Set Integer -> Set Integer -> Set (Integer,Integer)
productoCartesiano [] ys = []
productoCartesiano [x] ys = (formarTuplas x ys)
productoCartesiano (x:xs) ys = (formarTuplas x ys) ++ (productoCartesiano xs ys)

formarTuplas :: Integer -> Set Integer -> Set (Integer, Integer)
formarTuplas _ [] = []
formarTuplas x (y:ys) = (x,y) : formarTuplas x ys