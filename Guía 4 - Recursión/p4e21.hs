pitagoras :: Int -> Int -> Int -> Int --pensar el ejercicio como una doble sumatoria
pitagoras m n r | m == 0 = pitagorasAux m n r 
                | otherwise = pitagorasAux m n r + pitagoras (m-1) n r 

pitagorasAux :: Int -> Int -> Int -> Int
pitagorasAux m n r | n == 0 = pitagorasValor m n r --ver que tambien podria hacerse con "if" "else" en lugar de otra funcion auxiliar
                   | otherwise = pitagorasValor m n r + pitagorasAux m (n-1) r 

pitagorasValor :: Int -> Int -> Int -> Int
pitagorasValor p q r | p^2 + q^2 <= r^2 = 1
                     | otherwise = 0
