{--
Implementar la funci´on todosMenores :: (Integer, Integer, Integer) ->Bool
problema todosMenores ((n1,n2,n3) : Z × Z × Z) : Bool {
requiere: {T rue}
asegura: {(res = true) ↔ ((f(n1) > g(n1)) ∧ (f(n2) > g(n2)) ∧ (f(n3) > g(n3))))}
}
problema f (n: Z) : Z {
requiere: {T rue}
asegura: {(n ≤ 7 → res = n
2
) ∧ (n > 7 → res = 2n − 1)}
}
problema g (n: Z) : Z {
requiere: {T rue}
asegura: {res = if esP ar(n) then n/2 else 3n + 1 fi}
}
pred esP ar(n : Z){ (n mod 2) = 0 }
--}

f :: Integer -> Integer
f x | x<=7 = x^2
    | otherwise = 2*x-1

esPar :: Integer -> Bool
esPar x = mod x 2 == 0

g :: Integer -> Integer
g x | esPar(x) = div x 2
    | otherwise = 3*x+1

todosMenores :: Integer -> Integer -> Integer -> Bool
todosMenores x y z = (f x > g x) && (f y > g y) && (f z > g z)