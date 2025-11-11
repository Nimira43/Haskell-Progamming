-- Exploring Pattern Matching and Guards

data Suit = Hearts | Diamonds | Clubs | Spades deriving (Show, Eq)
data Rank = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace 
  deriving (Show, Eq, Enum)
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

main :: IO ()
main = do
  let card1 = Card Ace Spades
      card2 = Card King Hearts 
      card3 = Card Seven Diamonds
      card4 = Card Two Clubs
  
  putStrLn (describeCard card1)
  putStrLn (describeCard card2)
  putStrLn (describeCard card3)
  putStrLn (describeCard card4)

  putStrLn "\nCardValues: "
  mapM_ (\(Card rank suit) -> putStrLn $ show rank ++ " of " ++ show suit ++ " = " ++ show (cardValue rank)) [card1, card2, card3, card4]
  
{- 
  Why Derive?

deriving Show lets you print values.
deriving Eq enables == and /=.
deriving Enum gives you fromEnum, toEnum, ranges like [Two .. Ace].

You can even derive Ord to compare ranks (rank1 > rank2), which is handy for games.
  
  
  -}