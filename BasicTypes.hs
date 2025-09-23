greet :: String -> String
greet name = "Welcome, " ++ name ++ ", to Haskell."

main :: IO ()
main = do
  putStrLn "Enter your name: "
  name <- getLine
  putStrLn(greet name)