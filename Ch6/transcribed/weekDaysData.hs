-- Defining the days of the week data type.

data DayOfWeek = 
 Mon | Tue | Wed | Thu | Fri | Sat | Sun

-- day of week and numerical day of month

data Date = 
 Date DayOfWeek Int

-- Instances for DayOfWeek

instance Eq DayOfWeek where
 (==) Mon Mon  = True
 (==) Tue Tue  = True
 (==) Wed Wed  = True
 (==) Thu Thu  = True
 (==) Fri Fri  = True
 (==) Sat Sat  = True
 (==) Sun Sun  = True
 (==) _ _      = False


-- Instances for Date

instance Eq Date where
 (==) (Date weekday dayOfMonth)
      (Date weekday' dayOfMonth') =
   weekday == weekday'
  && dayOfMonth == dayOfMonth' 
