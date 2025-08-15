-- In-text examples page 198
-- #HaskellBook

data Mood = Blah

instance Show Mood where
 show _ = "Blah"


---------------------------

-- In-text example page 200
-- HaskellBook

class Numberish a where
 fromNumber :: Integer -> a
 toNumber :: a -> Integer


newtype Age =
 Age Integer
 deriving (Eq, Show)

instance Numberish Age where 
 fromNumber n = Age n
 toNumber (Age n) = n

newtype Year =
 Year Integer
 deriving (Eq, Show)

instance Numberish Year where
 fromNumber n = Year n
 toNumber (Year n) = n

sumNumberish :: Numberish a => a -> a -> a
sumNumberish a a' = fromNumber summed
 where integerOfA = toNumber a
       integerOfAPrime = toNumber a'
       summed = 
               integerOfA + integerOfAPrime

-------------------------------------------

--In text example p. 202
-- Failed to make it work
{-
class NNumberish a where
 fromNNumber       :: Integer -> a
 toNNumber         :: a -> Integer
 defaultNNumber    :: a

instance NNumberish AAge where
  fromNNumber n = AAge n
  toNNumber (AAge n) = n
  defaultNNumber = AAge 65 

instance NNumberish YYear where
  fromNNumber n = YYear n
  toNNumber (YYear n) = n
  defaultNNumber = YYear 1988
-}

-----------------------------------------------

-- In-text example p. 203

add :: Num a => a -> a -> a
add x y = x + y

addWeird :: (Ord a, Num a) => a -> a -> a
addWeird x y = 
 if x>1
 then x + y
 else x
