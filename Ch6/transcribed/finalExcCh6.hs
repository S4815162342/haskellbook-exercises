-- Final Excercises Chapter 6

-- Does it typecheck?

-- 1

data Person = Person Bool
 deriving Show

printPerson :: Person -> IO()
printPerson person = putStrLn (show person)

-- 2

-- data Mood = Blah | Woot deriving Show

data Mood = Blah | Woot deriving (Eq, Show)

settleDown x = if x == Woot
               then Blah
               else x

-- 3 is a question

-- 4 

type Subject = String
type Verb = String
type Object = String

data Sentence =
 Sentence Subject Verb Object
 deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"

-- Given a data declaration, what can we do?

data Rocks =
 Rocks String deriving (Eq, Show)
 
data Yeah =
 Yeah Bool deriving (Eq, Show)

data Papu = 
 Papu Rocks Yeah 
 deriving (Eq, Show)

--1
-- phew = Papu "chases" True
phew = Papu (Rocks "chases") (Yeah True)

