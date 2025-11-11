-- Exploring Pattern Matching and Guards

data Suit = Hearts | Diamonds | Clubs | Spades deriving Show
data Rank = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace deriving Show
data Card = Card Rank Suit deriving Show

describeCard :: Card -> String
describeCard (Card Ace Spades) = "The Ace of Spades"
describeCard (Card King Hearts) = "The King of Hearts"
describeCard (Card rank suit) = "This card is the " ++ show rank ++ " of " ++ show suit

cardValue :: Rank -> Int
cardValue rank
 | rank == Ace    = 11
 | rank == King   = 10
 | rank == Queen  = 10
 | rank == Jack   = 10
 | otherwise      = fromEnum rank + 2
