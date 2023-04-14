{--Implementar una funci´on:
distanciaManhattan:: (Float, Float, Float) ->(Float, Float, Float) ->Float
problema distanciaManhattan (p : R × R × R, q : R × R × R) : R 
Por ejemplo:
distanciaManhattan (2, 3, 4) (7, 3, 8) ⇝ 9
distanciaManhattan ((-1), 0, (-8.5)) (3.3, 4, (-4)) ⇝ 12.8
--}
distanciaManhattan::(Float, Float, Float) -> (Float, Float, Float) -> Float
distanciaManhattan (x,y,z) (a,b,c) | calculo (x,y,z) (a,b,c) > 0 = calculo (x,y,z) (a,b,c)
                                   | otherwise = - calculo (x,y,z) (a,b,c)

calculo :: (Float, Float, Float) -> (Float, Float, Float) -> Float
calculo (x,y,z) (a,b,c) = (x-a) + (y-b) + (z-c)
                                     
