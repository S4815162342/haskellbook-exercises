-- p. 235
-- Obs. modules apparently need to be declared either at the beginning of the cell or in a new one.

module TupleFunctions where
 
addEmUp2 :: Num a => (a,a) -> a
addEmUp2 (x,y) = x+y

addEmUp2Alt :: Num a => (a,a) -> a
addEmUp2Alt tup = (fst tup) + (snd tup)

fst3 :: (a,b,c) -> a
fst3 (x,_,_) = x

third3 :: (a,b,c) -> c
third3 (_,_,x) = x
