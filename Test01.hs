doubleAndShow :: Int -> String
doubleAndShow n =
  let doubled = n * 2
  in "The result is " ++ show doubled

main :: IO ()
main = putStrLn (doubleAndShow 7)