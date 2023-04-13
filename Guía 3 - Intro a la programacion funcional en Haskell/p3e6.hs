{--Ejercicio 6. Programar una funcion bisiesto :: Integer ->Bool
pred EsMultiplo(x : Z, y : Z){x mod y = 0}
problema bisiesto (a˜no: Z) : Bool {
requiere: {T rue}
asegura: {res = f alse ↔ (¬EsMultiplo(a˜no, 4) ∨ (EsMultiplo(a˜no, 100) ∧ ¬EsMultiplo(a˜no, 400)))}
}
--}

esBisiesto :: Integer -> Bool
esBisiesto x | not (esMultiplo x 4) || (esMultiplo x 100 && not (esMultiplo x 400)) = False
             | otherwise = True

esMultiplo :: Integer -> Integer -> Bool
esMultiplo x y = mod x y == 0