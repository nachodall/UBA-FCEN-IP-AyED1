--auxiliares
longitud :: [a] -> Integer
longitud [] = 0
longitud [x] = 1
longitud (x:xs) = 1 + longitud xs

reversoPM :: [t] -> [t]
reversoPM [] = []
reversoPM (x:xs) = (reversoPM xs)  ++ [x]


--5.1 nat2bin :: Integer -> [Integer], que recibe un n´umero no negativo y lo transforma en una lista de bits correspondiente a su representacion binaria. 
--Por ejemplo nat2bin 8 devuelve [1, 0, 0, 0].
nat2bin :: Integer -> [Integer]
nat2bin 0 = [0]
nat2bin 1 = [1]
nat2bin n | mod n 2 == 0 =  nat2bin (div n 2) ++ [0] 
          | otherwise =  nat2bin (div n 2) ++ [1]

--5.2 bin2nat :: [Integer] -> Integer 
bin2Nat :: [Int] -> Int
bin2Nat n = bin2NatAux n (longitud n)

bin2NatAux :: [Int] -> Int -> Int
bin2NatAux [] _ = 0
bin2NatAux (x:xs) i | x == 1 = 2^(i-1) + bin2NatAux xs (i-1)
                    | otherwise = bin2NatAux xs (i-1)


--5.3 nat2hex :: Integer -> [Char], que recibe un numero no negativo y lo transforma en una lista de caracteres correspondiente a su representacion hexadecimal. 
--Por ejemplo nat2hex 45 devuelve [’2’, ’D’].

--5.4 sumaAcumulada :: (Num t) => [t] -> [t]:
sumaAcumulada :: (Num t) => [t] -> [t]
sumaAcumulada [] = []
sumaAcumulada [x] = [x]
sumaAcumulada (x:y:xs) = x : sumaAcumulada ((x+y):xs)

--5.5 descomponerEnPrimos :: [Integer] -> [[Integer]] 
descomponerEnPrimos :: [Integer] -> [[Integer]] 
descomponerEnPrimos [x] = [factoresPrimos x] 
descomponerEnPrimos (x:xs) = factoresPrimos x : descomponerEnPrimos xs

factoresPrimos :: Integer -> [Integer]
factoresPrimos 1 = [1]
factoresPrimos 0 = [0]
factoresPrimos n = factorizar n 2 --recordar que 2 es el primer numero primo 

factorizar :: Integer -> Integer -> [Integer]
factorizar n divisor | divisor * divisor > n = [n] --caso base ya que si n no tiene factores primos menores o iguales que la raíz cuadrada de n entonces n es un número primo.
                     | mod n divisor == 0 = divisor : (factorizar (div n divisor) divisor) --notar que nunca se agregara un numero no primo ya que no llegaran por ej. el 12 nunca llegara a probar un numero no primo como divisor
                     | otherwise = factorizar n (divisor+1) 




