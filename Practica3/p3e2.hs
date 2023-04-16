f ::Integer-> Integer
f n |n == 1 = 8
    |n == 4 = 131
    |n == 16 = 16

g :: Integer-> Integer
g n |n == 8 = 16
    |n == 16 = 4
    |n == 131 = 1

h :: Integer -> Integer
h x = (g(f(x)))


k :: Integer -> Integer
k x = (f(g(x)))

--EJERCICIO 2A
m :: Integer -> Integer
m x |x >= 0 = x
    | otherwise = x * (-1)

-- EJERCICIO 2B
maxabs :: Integer -> Integer->Integer
maxabs x y | m x > m y = m x
           | m y > m x = m y   

--EJERCICIO 2C

max3:: Integer-> Integer-> Integer-> Integer
max3 x y z |x >= y && x>z = x
           |y > x && y>z = y
           |otherwise = z

-- EJERCICIO 2D
algunoEs0 :: Integer -> Integer-> Bool
algunoEs0 _ 0 = True
algunoEs0 0 _ = True
algunoEs0 _ _ = False

--EJERCICIO 2E
ambosSon0 :: Integer-> Integer -> Bool
ambosSon0 0 0 =True
ambosSon0 _ _ =False

--EJERCICIO 2F
int :: Float -> Float -> Bool
int x y |(x<=3 && y<=3) || (x>3 && x<=7 && y>=3 && y<=7) || (x>=7 && y>=7) = True
        |otherwise = False
-- EJERCICIO 2G
sumDis :: Integer -> Integer -> Integer -> Integer
sumDis x y z |x/=y && y/=z && x/=z = x + y + z
             |x/=y && y==z = x+y
             |x ==y && x/=z = x+z
             |x==z && y/=z = y+z
             |otherwise = x
-- EJERCICIO 2H
multiploDe :: Integer -> Integer -> Bool
multiploDe x y |x `mod` y == 0 = True
               |otherwise = False
-- EJERCICIO 2I
digUn :: Integer -> Integer
digUn x = x `mod` 10 
--Ejercicio 2J
digDec :: Integer -> Integer
digDec x |x>9 = digUn(div x 10)
         |otherwise = undefined

