{-
To run a Haskell program:

ghc Program006.hs
./Program006

Or interpret directly:

runghc Program006.hs
-}

describeCard :: (String, String) -> String
describeCard :: (rank, suit) = "The card is the " ++ rank ++ " of " ++ suit

main :: IO ()
main = do
  let card1 = ("Seven", "Diamonds")
      card2 = ("Ace", "Spades")
      card3 = ("Nine", "Clubs")
      card4 = ("Eight", "Hearts")