factorial :: Integer -> Integer

factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO ()
main = do
  let result = factorial 5
  putStrLn ("Factorial 5: " ++ show result)