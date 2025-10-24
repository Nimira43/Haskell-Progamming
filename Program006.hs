{-
To run a Haskell program

ghc ProgramName.hs
-}

describeCard :: (String, String) -> String
describeCard :: (rank, suit) = "The card is the " ++ rank ++ " of " ++ suit

main :: IO ()
main = do