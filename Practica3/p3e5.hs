esPar:: Integer -> Bool
esPar x  |x `mod` 2 == 0 = True
               |otherwise = False

g :: Integer-> Integer
g n |esPar n = div n 2
    |otherwise = (3*n)+1

f :: Integer-> Integer
f n |n<=7 = n*n
    |n > 7 = 2 * n-1

todosMenores :: (Integer,Integer,Integer)->Bool
todosMenores (a,b,c)= (((f a)>(g a)) && ((f b)>(g b)) && ((f c)>(g c)) )