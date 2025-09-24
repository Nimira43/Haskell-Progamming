import Data.List
import System.IO

maxInt = maxBound :: Int
minInt = minBound :: Int

main :: IO ()
main = do
  putStrLn ("Max Integer using maxBound: " ++ show maxInt)
  putStrLn ("Min Integer using minBound: " ++ show minInt)