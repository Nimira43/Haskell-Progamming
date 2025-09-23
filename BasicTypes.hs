greet :: String -> String
greet name = "Welcome, " ++ name ++ ", to Haskell."

add :: Int -> Int -> Int
add x y = x + y

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

main :: IO ()
main = do
  putStrLn "Enter your name: "
  name <- getLine
  putStrLn(greet name)
  
  let result = add 4 8
  putStrLn ("The result is: " ++ show result)

  putStrLn ("Person: " ++ person)
  putStrLn ("Age: " ++ show age)
  putStrLn ("Pi Approximation: " ++ show piApprox)
  putStrLn ("Gravity: " ++ show gravity)
  putStrLn ("Is Wizard?: " ++ show isWizard)

