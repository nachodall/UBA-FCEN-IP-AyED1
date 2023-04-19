{--Ejercicio 3. Implementar la funcion esDivisible :: Integer ->Integer ->Bool que dados dos numeros naturales
 determinar si el primero es divisible por el segundo. No esta permitido utilizar las funciones mod ni div.
--}

esDivisible :: Integer ->Integer ->Bool
esDivisible x y | x==y = True
                | x<y = False
                | otherwise = esDivisible(x-y) y