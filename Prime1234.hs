module Prime1234 where

primes :: [Integer]
primes =
  sieve (2:[3,5..])
  where
    sieve (p:xs) = sieve [x | x <- xs, rem x p > 0]


{--
  primesToN :: Integer -> [Integer]
  primesToN n = sieve (2:[3,5..n])
    where
    sieve (p:xs)
       | p*p > n = p:xs
       | otherwise = p : sieve [x | x <- xs, rem x p > 0]
  
  factorsToN :: Integer -> [Integer]
  factorsToN n =
    [ x | x<-(primesToN $ truncate $ sqrt $ fromIntegral n), (mod n x)==0 ]
  
  largestPrimeFactor :: Integer -> Integer
  largestPrimeFactor n =
    let
      fs = factorsToN n
    in
      last fs
  
  sol = largestPrimeFactor 600851475143
--}