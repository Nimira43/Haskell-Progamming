-- Pattern Matching + ADTs
-- Defining Card 
data Suit = Hearts | Diamonds | Clubs | Spades
  deriving (Show, Eq)
colour :: Suit -> String
colour Hearts = "Red"
colour Diamonds = "Red"
colour Clubs = "Black"
colour Spades = "Black"

data Rank
  = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace
  deriving (Show, Eq, Enum)

data Card = Card Rank Suit
  deriving (Show, Eq)

-- Describe cards with pattern matching
describeCard :: Card -> String

describeCard (Card Nine Clubs) = "The Nine of Clubs"
describeCard (Card Three Hearts) = "The Three of Hearts"
describeCard (Card rank suit) = "This card is the " ++ show rank ++ " of " ++ show suit

-- Card values with guards
cardValue :: Rank -> Int
cardValue rank
  | rank == Ace = 11
  | rank == King = 10
  | rank == Queen = 10
  | rank == Jack = 10
  | otherwise = fromEnum rank + 2

-- Defining Shape 
data Shape
  = Circle Float
  | Rectangle Float Float
  deriving (Show)

area :: Shape -> Float
area (Circle r) = pi * r ^ 2
area (Rectangle w h) = w * h

-- Defining Cat 
data Cat
  = Lenny
  | OtherCat String
  | Hero String Int
  deriving (Show)

icon :: Cat -> String
icon Lenny = "Supercat — guardian spirit!"
icon (OtherCat name) = "Another cat: " ++ name
icon (Hero name power) = name ++ " with power level " ++ show power