factorial :: Integer -> Integer

factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO ()
main = do
  let result = factorial 5
  putStrLn ("Factorial 5: " ++ show result)

  let results = map factorial [0..5]
  putStrLn ("Factorials from 0 to 5: " ++ show results)