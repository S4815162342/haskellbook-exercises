-- p. 229
-- RegisteredUser1.hs
module RegisteredUser where
 
newtype Username = 
 Username String
  
newtype AccountNumber =
 AccountNumber Integer
  
data User =
  UnregisteredUser
 | RegisteredUser Username AccountNumber
 
-- Apparently modules need to be declared in separate cells.
