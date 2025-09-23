greet :: String -> String
greet name = "Welcome, " ++ name ++ ", to Haskell."

main :: IO ()
main = do
  putStrLn "Enter your name: "
  name <- getLine
  putStrLn(greet name)

person :: String
person = "Nick"
age :: Int
age = 43
piApprox :: Float
piApprox = 3.14
gravity :: Double
gravity = 0.90665
isWizard :: Bool
isWizard = False



