-- Algebraic Data Types

data Suit = Hearts | Diamonds | Clubs | Spades
  deriving (Show)

colour :: Suit -> String
colour Hearts = "Red"
colour Diamonds = "Red"
colour Clubs = "Black"
colour Spades = "Black"

data Rank = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace
  deriving (Show)

data Card = Card Rank Suit
  deriving (Show)

myCard :: Card
myCard = Card Seven Diamonds

showCard :: Card -> String
showCard (Card rank suit) = show rank ++ " of " ++ show suit

data Shape
  = Circle Float
  | Rectangle Float Float

area :: Shape -> Float
area (Circle r) = pi * r ^ 2
area (Rectangle w h) = w * h

data Cat
  = Lenny
  | OtherCat String
  | Hero String Int
  deriving (Show)

icon :: Cat -> String
icon Lenny = "Supercat"
icon (OtherCat name) = "Another cat: " ++ name
icon (Hero name power) = name ++ "with power level " ++ show power

main :: IO ()
main = do
  putStrLn (showCard myCard)
