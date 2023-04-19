{--Implementar una funcion parteEntera :: Float ->Integer segun la siguiente especificacion:
problema parteEntera (x: R) : Z {
requiere: {True}
asegura: { resultado ≤ x < resultado + 1 }
}--}

parteEntera :: Float -> Integer
parteEntera n | n < 1 && n > 0 = 0
              | n > -1 && n <= 0 = -1
              | n >= -1 = 1 + parteEntera(n-1)
              | otherwise = -1 + parteEntera(n+1)

{---
4.7
-1 + -3.7
-1 + -1 + -2.7
-1 + -1 + -1 + -1.7
-1 + -1 + -1 + -1 + -0.7
-1 + -1 + -1 + -1 + -1
--}