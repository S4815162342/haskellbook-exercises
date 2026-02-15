-- 6 

module Reverse where

firstB :: String
firstB = take 5 phraseB

dummyB :: String
dummyB = drop 5 phraseB

secondB :: String
secondB = take 3 dummyB

thirdB :: String
thirdB = drop 9 phraseB

phraseB :: String
phraseB = "Curry is awesome"

rvrsBis :: String -> String
rvrsBis x = thirdB ++ secondB ++ " " ++ firstB

main :: IO()
main = print(rvrsBis "Curry is awesome")