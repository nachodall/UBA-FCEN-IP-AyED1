f :: Integer -> Integer
f x | x == 1 = 8
    | x == 4 = 131
    | x == 16 = 16

--b:
--especificacion: requiere: { n=8 | n=16 | n=131  } same al a 

g :: Integer -> Integer
g 8 = 16
g 16 = 4
g 131 = 1

--c

h :: Integer -> Integer
h x = f (g x)

k :: Integer -> Integer
k x = g (f x)