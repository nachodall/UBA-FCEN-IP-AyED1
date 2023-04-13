--a) prodInt (lo mismo que calcular el producto escalar entre 2 vectores)
prodInt :: (Int,Int) -> (Int,Int) -> Int
prodInt (x,y) (z,w) = x*z + y*w

--b) todoMenor 
todoMenor :: (Int,Int) -> (Int,Int) -> Bool
todoMenor (x,y) (z,w) | x<z && y<w = True
                      | otherwise = False

--c) distanciaPuntos: calcula la distancia entre dos puntos de R2. Se deduce de pitágoras => vectorDistancia ((x1-x2),(y1-y2)) y distancia = |vectorDistancia|
distanciaPuntos :: (Float,Float) -> (Float,Float) -> Float
distanciaPuntos (x,y) (z,w) = sqrt( (getValueX(x,z)) + (getValueY(y,w)) )

getValueX :: (Float,Float) -> Float
getValueX (x,z) = (x - z)^2

getValueY :: (Float,Float) -> Float
getValueY (y,w) = (y - w)^2

-- d) sumaTerna: dada una terna de enteros, calcula la suma de sus tres elementos.
sumaTerna :: (Int, Int, Int) -> Int
sumaTerna (x,y,z)= x + y + z

-- e) sumarSoloMultiplos: dada una terna de enteros y un natural, calcula la suma de los elementos de la terna que son multiplos del natural. Tomamos a x como el numero que debe ser natural y como en haskell no tenemos naturales, decimos que si x no es natural entonces el programa corta al devolver -1. En caso de que ningun numero sea multiplo de x, el res = 0
sumarSoloMultiplos :: (Int, Int, Int) -> Int -> Int
sumarSoloMultiplos (y,z,w) x = getMultiplo x y + getMultiplo x z + getMultiplo x w

getMultiplo :: Int -> Int -> Int
getMultiplo x y
  | y `mod` x == 0 = y
  | otherwise = 0

--f)posPrimerPar: dada una terna de enteros, devuelve la posicion del primer numero par si es que hay alguno, y devuelve 4 si son todos impares. 
posPrimerPar :: (Int, Int, Int) -> Int
posPrimerPar (x,y,z) | esPar x && x/=0 = 1
                     | esPar y && y/=0 = 2
                     | esPar z && z/=0 = 3
                     | otherwise = 4
                     where esPar x = x `mod` 2 == 0

--g) crearPar :: a ->b ->(a, b): crea un par a partir de sus dos componentes dadas por separado (debe funcionar para elementos de cualquier tipo).
crearPar :: a -> b -> (a, b)
crearPar a b = (a,b)

--h) invertir :: (a, b) ->(b, a): invierte los elementos del par pasado como parametro (debe funcionar para elementos de cualquier tipo).
invertir :: (a, b) -> (b, a)
invertir (a,b) = (b,a)




