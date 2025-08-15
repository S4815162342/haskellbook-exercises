-- 1

i :: a -> a
i x = id x

-- 2

c :: a -> b -> a
c x _ = id x

-- 4

c' :: a -> b -> b
c' _ y = id y

-- 5 

r :: [a] -> [a]
r x = drop 3 x

-- 6 

co :: (b -> c) -> (a -> b) -> a -> c
co btoC atoB a = btoC (atoB a)

-- 7 

a :: (a -> c) -> a -> a
a _ x = id x

-- 8 

a' :: (a -> b) -> a -> b
a' xToB x = xToB x 
