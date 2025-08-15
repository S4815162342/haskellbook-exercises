-- Examples Ch6

-- Doesn't work. (/) requires Fractional typeclass.

--divideThenAdd :: Num a => a -> a -> a
--divideThenAdd x y = (x/y)+1

-- works fine. (+) and (-) only require Num typeclass

substractThenAdd :: Num a => a -> a -> a
substractThenAdd x y = (x-y)+1

-- works good.
divideThenAdd :: Fractional a => a -> a -> a
divideThenAdd x y = (x/y)+1

-- Some examples from page 191 on

-- Doesn't work. Value a needs Eq instance
{-
check' :: a -> a -> Bool
check' a a' = a == a'
-}

-- Works!
check' :: Ord a => a -> a -> Bool
check' a a' = a == a'


---------------
--
data Mood = Blah

instance Show Mood where
   show _ = "Blah"

--------

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
