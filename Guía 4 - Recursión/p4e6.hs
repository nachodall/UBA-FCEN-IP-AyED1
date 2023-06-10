{--Ejercicio 6. Implementar la funcion sumaDigitos :: Integer ->Integer que calcula la suma de digitos 
de un numero natural. Para esta funcion pueden utilizar div y mod.--}

sumaDigitos :: Integer -> Integer 
sumaDigitos n  | n == 0 = 0 
               | otherwise = mod n 10 + sumaDigitos (sacoUltimoDigito n) --esto es como un contador en imperativo. el primer numero indica de a cuanto quiero sumar

sacoUltimoDigito :: Integer -> Integer
sacoUltimoDigito x = div x 10

