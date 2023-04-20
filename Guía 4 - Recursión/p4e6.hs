{--Ejercicio 6. Implementar la funcion sumaDigitos :: Integer ->Integer que calcula la suma de digitos 
de un numero natural. Para esta funcion pueden utilizar div y mod.--}

sumaDigitos :: Integer -> Integer 
sumaDigitos n  | n < 10 = 1 
               | otherwise = 1 + sumaDigitos (sacoUltimoDigito n) --esto es como un contador en imperativo. el primer numero indica de a cuanto quiero sumar

sacoUltimoDigito :: Integer -> Integer
sacoUltimoDigito x = div x 10


{--5678 res 0
567 res 1
56 res 2
5 res 3
- res 4--} 
