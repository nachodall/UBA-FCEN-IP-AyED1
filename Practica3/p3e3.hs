rel :: Integer -> Integer -> Bool
rel a b |a*a+a*b*k == 0 = True
        |otherwise = False
        where 
            k =div (-a)  b