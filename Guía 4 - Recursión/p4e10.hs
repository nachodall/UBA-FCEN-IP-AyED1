{--Implementar y dar el tipo de las siguientes funciones--}

--a)
f1 :: Integer -> Integer
f1 n | n == 0 = 1
     | otherwise = 2 ^ n + f1 (n-1)

--b)
f2 :: Integer -> Integer -> Integer
f2 n q | n == 1 = q 
       | otherwise = q ^ n + f2 (n-1) q

--c)
f3 :: Integer -> Integer -> Integer
f3 n q = f3aux (2*n) q

f3aux :: Integer -> Integer -> Integer
f3aux n q | n == 1 = q 
          | otherwise = q ^ n + f3aux (n-1) q

--d)
f4 :: Integer -> Integer -> Integer
f4 n q = f4aux (2*n) n q

f4aux :: Integer -> Integer -> Integer -> Integer
f4aux sup inf q | sup == inf = q^sup 
                | otherwise = q^sup + f4aux (sup -1) inf q
