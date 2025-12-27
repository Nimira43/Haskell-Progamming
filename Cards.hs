module Main where

newCard :: String
newCard = "Five of Diamonds"

main :: IO ()
main = do
  let cards = ["Ace of Diamonds", newCard]
      cards' = cards ++ ["Six of Spaces"] 
      -- ' indicates modified cards

  mapM_ (\(i, card) -> putStrLn $ show i ++ " " ++ card) (zip [0..] cards')


{-
  \(i, card) -> putStrLn $ show i ++ " " ++ card

  1) This is a lambda function — an anonymous function.
  2) It takes a tuple (i, card) and prints it like: 0 Ace of Diamonds
  3) show i converts the index to a string.
  4) ++ is string concatenation.

  zip [0..] cards'

  5) zip pairs the card with it's index
-}
   