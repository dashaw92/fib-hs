module Main (main) where

import Lib

fib_list :: [Int]
fib_list = [ fib x | x <- [0..50] ]

main :: IO ()
main = putStrLn (show fib_list)
