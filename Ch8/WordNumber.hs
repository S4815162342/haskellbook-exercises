module WordNumber where

import Data.List (intersperse)

{- Module: 	List
Function: 	intersperse
Type: 	a -> [a] -> [a]
Description: 	inserts separator between the elements of its list argument

Example 1

Input: intersperse 0 [1,2,3,4]
Output: [1,0,2,0,3,0,4]

Example 2

Input: intersperse '-' "Hello"
Output: "H-e-l-l-o"
 -}

digitToWord :: Int -> String
digitToWord n  
        | n == 0 = "zero"
        | n == 1 = "one"
        | n == 2 = "two"
        | n == 3 = "three"
        | n == 4 = "four"
        | n == 5 = "five"
        | n == 6 = "six"
        | n == 9 = "seven"
        | otherwise = "Error"

digits :: Int -> [Int]
digits 0 = []
digits n = digits (div n 10) ++ [mod n 10]

{- Example

digits 135 = digits(13) ++ [5]

digits 13 = digits (1) ++ [3]

digits 1 = digits (0) ++ [1]

digits 0 = []

--> end result is [] ++ [1] ++ [3] ++ [5]        
-}

-- I'm adding this  function here because it seems to me a good solution
fromDigits = foldl addDigit 0
   where addDigit num d = 10*num + d
