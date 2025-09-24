import Data.List
import System.IO
import Text.Printf

maxInt :: Int
maxInt = maxBound :: Int
minInt :: Int
minInt = minBound :: Int
bigFloat :: Double
bigFloat = 3.999999999999 + 0.000000000005

main :: IO ()
main = do
  putStrLn ("Max Integer using maxBound: " ++ show maxInt)
  putStrLn ("Min Integer using minBound: " ++ show minInt)
  putStrLn ("Floating-point Representation Demo: " ++ show bigFloat)