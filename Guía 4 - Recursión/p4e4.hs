{--Ejercicio 4. Implementar la funcion sumaImpares :: Integer ->Integer que dado n ∈ N sume los primeros n numeros
impares. Por ejemplo: sumaImpares 3 -> 1+3+5 ⇝ 9.
--}

sumaImpares :: Integer ->Integer
sumaImpares n = contarSuma 1 n

contarSuma :: Integer ->Integer ->Integer
contarSuma num cant | cant == 0 = 0
                    | otherwise = num + contarSuma (num + 2) (cant - 1)



{-5: contarSuma(1 5)
    cantidad:5  num=1 suma=1 
    cantidad:4  num=3 suma=4
    cantidad:3  num=5 suma=9
    cantidad:2  num=7 suma=16
    cantidad:1  num=9 suma=25
    cantidad:0  25 + 0
--}
         
    

              
