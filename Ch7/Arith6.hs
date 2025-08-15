-- 6.
-- arith6.hs
module Arith6 where 
roundTrip3 :: (Show a, Read b) => a -> b
roundTrip3 a = read (show a)

main3 = do
 print (roundTrip3 4 :: String)
 print (id 4)
 
 -- it won't compile and I have no idea why.