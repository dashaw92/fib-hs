module Lib
    ( fib
    ) where

-- Proxy for the actual fib function
fib :: Int -> Int
fib n = calcFib n (0, 1)

-- yay I'm learning Haskell :D
calcFib :: Int -> (Int, Int) -> Int
calcFib n (a, b)
    | n <= 0    = 0
    | n == 1    = 1
    | n == 2    = a + b
    | otherwise = calcFib (n - 1) (b, a + b)