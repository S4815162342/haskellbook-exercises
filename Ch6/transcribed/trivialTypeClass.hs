-- My first evah typeclass

data Trivial = 
 Trivial'

-- Now for my INSTANCES

instance Eq Trivial where
 Trivial' == Trivial' = True
