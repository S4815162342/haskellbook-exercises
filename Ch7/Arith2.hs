-- arith2.hs
module Arith2 where

add :: Int -> Int -> Int
add x y = x + y

addPF :: Int -> Int -> Int
addPF = (+)

addUno :: Int -> Int
addUno = \x -> x+1

addUnoPF :: Int -> Int
addUnoPF = (+1)

main :: IO()
main = do
 print (0 :: Int)
 print (add 1 0)
 print (addUno 0)
 print (addUnoPF 0)
 print ((addUno . addUno) 0)
 print ((addUnoPF . addUno) 0)
 print ((addUnoPF . addUnoPF) 0)
 print (negate(addUno 0)) -- negate makes the number into its opposite
 print ((negate . addUno) 0)
 print ((addUno . addUno . addUno . negate . addUno) 0)