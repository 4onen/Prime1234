
primes :: [Integer]
primes =
  sieve (2:[3,5..])
  where
    sieve (p:xs) = p : sieve [x | x <- xs, mod x p > 0]


main = print (primes!!1234)
--This prints "10067"