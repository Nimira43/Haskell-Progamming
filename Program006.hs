{-
To run a Haskell program:

ghc Program006.hs
./Program006

Or interpret directly:

runghc Program006.hs
-}

type Card = (String, String)

describeCard :: Card -> String
describeCard (rank, suit) = "The card is the " ++ rank ++ " of " ++ suit

main :: IO ()
main = do
  let card1 = ("Seven", "Diamonds")
      card2 = ("Ace", "Spades")
      card3 = ("Nine", "Clubs")
      card4 = ("Eight", "Hearts")

  putStrLn (describeCard card1)
  putStrLn (describeCard card2)
  putStrLn (describeCard card3)
  putStrLn (describeCard card4)

  let cards = [card1, card2, card3, card4]
  mapM_ (putStrLn . describeCard) cards

{-
  mapM_ — The Ritual of Doing
  
  You eating: 
  Pizza → yum, next! 
  Curry → yum, next! 
  Kebab → yum, next! 
  
  No record kept—just the joy of the moment.
  mapM_ performs an action (like printing or eating) for each item.
  It doesn’t return a list—it just executes the side effects.
  Perfect for IO like putStrLn, logging, or sending spells into the void.

  map — The Ritual of Remembering

  Lenny eating: 
    Chicken → yum → I like chicken 
    Salmon → yum → I like chicken, salmon 
    Dreamies → yum → I like chicken, salmon, dreamies

  map applies a function and returns a new list of results.
  No side effects—just pure transformation.
  Ideal for building up data, like map factorial [0..5] → [1, 1, 2, 6, 24, 120]
-}