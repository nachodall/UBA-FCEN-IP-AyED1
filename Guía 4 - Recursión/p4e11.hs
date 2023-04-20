{----}
--a)
esAprox :: Integer -> Float
esAprox n | n==0 = 1
          | otherwise = (1 / factorial n) + esAprox(n-1)

factorial :: Integer -> Float
factorial n | n==0 = 1
            | otherwise = fromIntegral n * (factorial (n-1))

--b)
e :: Float
e = esAprox 10
