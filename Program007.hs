-- Exploring Pattern Matching and Guards

data Suit = Hearts | Diamonds | Clubs | Spades deriving Show
data Rank = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace deriving Show
data Card = Card Rank Suit deriving Show

describeCard :: Card -> String