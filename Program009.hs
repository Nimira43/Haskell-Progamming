-- Pattern Matching + ADTs

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

describeCard :: Card -> String

describeCard (Card Nine Clubs) = "The Nine of Clubs"
describeCard (Card Three Hearts) = "The Three of Hearts"
describeCard (Card rank suit) = "This card is the " ++ show rank ++ " of " ++ show suit