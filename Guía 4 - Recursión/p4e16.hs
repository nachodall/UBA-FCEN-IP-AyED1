{--Recordemos que un entero p > 1 es primo si y s´olo si no existe un entero k tal que 1 < k < p y k divida a p.
--}

-- a) Implementar menorDivisor :: Integer ->Integer que calcule el menor divisor (mayor que 1) de un natural n pasado
--    como parametro.
menorDivisor :: Integer -> Integer
menorDivisor n = menorDivisorAux n 2 --2 en lugar de uno xq pide el menor divisor entero mayor q uno

menorDivisorAux :: Integer -> Integer -> Integer
menorDivisorAux n x | esDivisible n x = x --cuando encuentre el primer divisor corta, en caso de primos corta en n
                    | otherwise = menorDivisorAux n (x+1)

esDivisible :: Integer ->Integer ->Bool
esDivisible x y | x==y = True
                | x<y = False
                | otherwise = esDivisible(x-y) y

--b) Implementar la funcion esPrimo :: Integer ->Bool que indica si un numero natural pasado como parametro es primo.
    esPrimo :: Integer -> Bool
    esPrimo n = menorDivisor n == n

--c) Implementar la funcion sonCoprimos :: Integer ->Integer ->Bool que dados dos numeros naturales indica si no
--tienen algun divisor en comun mayor estricto que 1.

sonCoprimos :: Integer -> Integer -> Bool
sonCoprimos x y = coprimosAux x y  2

coprimosAux :: Integer -> Integer -> Integer -> Bool
coprimosAux x y divisor | divisor > x || divisor > y = True
                         | (esDivisible x divisor) && (esDivisible y divisor) = False
                         | otherwise = coprimosAux x y (divisor + 1)

sonCoprimosAlt :: Int -> Int -> Bool
sonCoprimosAlt n x = mcd n x (menor n x) == 1

menor :: Int -> Int -> Int
menor n m
  | n < m = n
  | otherwise = m

mcd :: Int -> Int -> Int -> Int
mcd n x candidato | esDivisor candidato n && esDivisor candidato x = candidato
                  | otherwise = mcd n x (candidato - 1)

esDivisor :: Int -> Int -> Bool
esDivisor n m = mod m n == 0

--d) Implementar la funcion nEsimoPrimo :: Integer ->Integer que devuelve el n-esimo primo (n ≥ 1). Recordar que el
--primer primo es el 2, el segundo es el 3, el tercero es el 5, etc

nEsimoPrimo :: Integer -> Integer
nEsimoPrimo n = primoAux n 1 0

primoAux :: Integer -> Integer -> Integer -> Integer
primoAux n aux cont | n == cont = aux - 1 --aux se aumento en uno luego de encontrar el nesimo primo
                    | esPrimo aux == True = primoAux n (aux+1) (cont+1) 
                    | otherwise = primoAux n (aux+1) cont





            

