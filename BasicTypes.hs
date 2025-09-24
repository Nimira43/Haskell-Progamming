-- This is how to do comments in Haskell

{- 
  This is
  a multi-line
  comment
-}

greet :: String -> String
greet name = "Welcome, " ++ name ++ ", to Haskell."

add :: Int -> Int -> Int
add x y = x + y

sub ::  Int -> Int -> Int
sub x y = x - y

mult ::  Int -> Int -> Int
mult x y = x * y

divide ::  Int -> Int -> Int
divide x y = x `div` y

divide2 ::  Double -> Double -> Double
divide2 x y = x / y

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
  
  let adding = add 4 8
  putStrLn ("The result is: " ++ show adding)
  
  let deleting = sub 14 8
  putStrLn ("The result is: " ++ show deleting)
  
  let multiplying = mult 4 5
  putStrLn ("The result is: " ++ show multiplying)

  let dividing = divide 15 5
  putStrLn ("The result is: " ++ show dividing)
  
  let dividing2 = divide2 22 7
  putStrLn ("The result is: " ++ show dividing2)

  putStrLn ("Person: " ++ person)
  putStrLn ("Age: " ++ show age)
  putStrLn ("Pi Approximation: " ++ show piApprox)
  putStrLn ("Gravity: " ++ show gravity)
  putStrLn ("Is Wizard?: " ++ show isWizard)

  -- Booleans


  putStrLn ("not True = " ++ show (not True))
  putStrLn ("True || False = " ++ show (True || False))
  putStrLn ("True && False = " ++ show (True && False))
  putStrLn ("(False || True) && True = " ++ show ((False || True) && True))
  putStrLn ("not (not True) = " ++ show (not (not True)))

