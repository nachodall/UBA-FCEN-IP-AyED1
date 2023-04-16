-- EJERCICIO A
prodInt :: (Float, Float) -> (Float,Float)-> Float
prodInt (x,y) (v,w) = x*v + y*w 

-- EJERCICIO B
todoMenor :: (Float,Float)->(Float,Float)->Bool
todoMenor (x,y)(v,w)= x<v && y<w 

--EJERCICIO C
dist :: (Float,Float)->(Float,Float)-> Float
dist (x,y) (m,n)= sqrt((x-m)^2 + (y-n)^2)

--EJERCICIO D
sumTup :: (Integer,Integer, Integer) -> Integer
sumTup (x,y,z) = x+y+z

--EJERCICIO E
esMultiplo:: Integer-> Integer->Bool
esMultiplo y x |y `mod` x == 0 = True
               |otherwise = False

sumSoloMult:: (Integer, Integer,Integer) ->Integer ->Integer
sumSoloMult (x,y,z) n |esMultiplo x n  && esMultiplo y n  && esMultiplo z n  = 3
                      |esMultiplo x n  && esMultiplo y n  = 2
                      |esMultiplo x n  && esMultiplo z n  = 2
                      |esMultiplo y n  && esMultiplo z n  = 2
                      |esMultiplo x n  = 1
                      |esMultiplo y n = 1
                      |esMultiplo z n = 1
                      |otherwise = 0
--EJERCICIO F
esPar:: Integer -> Bool
esPar x  |x `mod` 2 == 0 = True
               |otherwise = False

primerPar :: (Integer,Integer,Integer)->Integer
primerPar (x,y,z) |esPar x  = 0
                  |esPar y  = 1
                  |esPar z  = 2
                  |otherwise = 4
--EJERCICIO G
crearPar :: t -> tx -> ( t , tx)
crearPar x y = (x,y)
--EJERCICIO H
invertir :: (t1,t2)->(t2,t1)
invertir (x,y)= (y,x)