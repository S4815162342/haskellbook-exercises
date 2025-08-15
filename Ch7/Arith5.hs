-- 5. 
-- Pointfree version of previous code

-- arith5.hs
module Arith5 where 
roundTrip' :: (Show a, Read a) => a -> a
roundTrip' = read . show 

main' = do
 print (roundTrip' 4)
 print (id 4)