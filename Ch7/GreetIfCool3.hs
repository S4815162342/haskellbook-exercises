-- p. 238
--greetIfCool3.hs

module GreetIfCool3 where

greetIfCool3 :: String -> IO()
greetIfCool3 coolness = 
 case cool of
  True -> putStrLn "aayy lmao"
  False -> putStrLn "Hello Sir or Madam"
 where cool = 
        coolness == "downright frosty yo" -- value needs to be moved to the right w/ respect to value name!