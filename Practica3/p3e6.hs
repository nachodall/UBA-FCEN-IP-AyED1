
esMultiplo:: Integer-> Integer->Bool
esMultiplo y x |y `mod` x == 0 = True
                 |otherwise = False

bisiesto:: Integer ->Bool
bisiesto y |not(esMultiplo  y 4) = False
           |esMultiplo y 100  && not (esMultiplo y 400) = False
           |otherwise = True
