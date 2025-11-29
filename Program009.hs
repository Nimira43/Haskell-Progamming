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

-- Recursive ADT: Hand of Cards
data Hand = Empty | Add Card Hand
  deriving (Show)

-- Calculate total value of a hand
handValue :: Hand -> Int
handValue Empty = 0
handValue (Add (Card rank _) rest) = cardValue rank + handValue rest

-- Show all cards in a hand
showHand :: Hand -> [String]
showHand Empty = []
showHand (Add card rest) = describeCard card : showHand rest

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

main :: IO ()
main = do
  putStrLn "=== Card Example ==="
  let card1 = Card Ace Spades
      card2 = Card King Hearts
      card3 = Card Seven Diamonds
      card4 = Card Two Clubs
      hand = Add card1 (Add card2 (Add card3 (Add card4 Empty)))
  mapM_ putStrLn (showHand hand)
  putStrLn ("Total hand value: " ++ show (handValue hand))

  putStrLn "\n=== Shape Example ==="
  putStrLn ("Circle area: " ++ show (area (Circle 3)))
  putStrLn ("Rectangle area: " ++ show (area (Rectangle 3 5)))

  putStrLn "\n=== Cat Example ==="
  putStrLn (icon Lenny)
  putStrLn (icon (OtherCat "Whiskers"))
  putStrLn (icon (Hero "Shadowpaw" 9001))

{-
  
What This Program Demonstrates

Pattern Matching: Special cases for Nine of Clubs and Three of Hearts.

Guards: Clean branching in cardValue.

ADTs with Payloads: Shape carries floats, Cat carries names and powers.

Recursive ADT: Hand models a list of cards, showing recursion in action.

Composition: Cards, shapes, and cats all coexist in one program.

-}