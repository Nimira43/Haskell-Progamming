-- Algebraic Data Types

data Suit = Hearts | Diamonds | Clubs | Spades

colour :: Suit -> String
colour Hearts = "Red"
colour Diamonds = "Red"
colour Clubs = "Red"
colour Spades = "Red"

data Rank  = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace 

data Card = Card Rank Suit

myCard :: Card
myCard = Card Seven Diamonds