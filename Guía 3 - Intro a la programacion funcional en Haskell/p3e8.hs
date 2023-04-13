--8)Implementar una funcion comparar :: Integer ->Integer ->Integer
--problema comparar (a:Z, b:Z) : Z {
--requiere: {T rue}
--asegura: {(res = 1 ↔ sumaUltimosDosDigitos(a) < sumaUltimosDosDigitos(b))}
--asegura: {(res = −1 ↔ sumaUltimosDosDigitos(a) > sumaUltimosDosDigitos(b))}
--asegura: {(res = 0 ↔ sumaUltimosDosDigitos(a) = sumaUltimosDosDigitos(b)))}}

--problema sumaUltimosDosDigitos (x: Z) : Z {
--requiere: {T rue}
--asegura: {res = (x m´od 10) + (⌊(x/10)⌋ m´od 10)}}

comparar :: Integer -> Integer -> Integer
comparar x y | sumaUltimosDosDigitos(x) < sumaUltimosDosDigitos(y) = 1 
             | sumaUltimosDosDigitos(x) > sumaUltimosDosDigitos(y) = -1
             | sumaUltimosDosDigitos(x) == sumaUltimosDosDigitos(y) = 0

sumaUltimosDosDigitos :: Integer -> Integer
sumaUltimosDosDigitos x = (mod x 10) + (mod (div x 10) 10)