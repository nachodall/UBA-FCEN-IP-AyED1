{--Implementar la funcion todosDigitosIguales :: Integer ->Bool que determina si todos los d´ıgitos de un
n´umero natural son iguales, es decir:
problema todosDigitosIguales (n: Z) : B {
requiere: { n > 0 }
asegura: { resultado = T rue ↔ (∃d, k : Z)(n =
Pk
i=0 d ∗ 10i
) }--}

ultimoDigito :: Integer -> Integer
ultimoDigito n = mod n 10

sacarUltimoDigito :: Integer -> Integer
sacarUltimoDigito n = div n 10

todosDigitosIguales :: Integer -> Bool
todosDigitosIguales n | n < 10 = True
                      | otherwise = ultimoDigito(n) == ultimoDigito(sacarUltimoDigito(n)) && todosDigitosIguales(sacarUltimoDigito(n)) 
                      
                      
