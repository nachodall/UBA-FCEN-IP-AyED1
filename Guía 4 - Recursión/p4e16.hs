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
