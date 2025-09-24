import Data.List
import System.IO
import Text.Printf
import Data.Ratio ((%))

maxInt :: Int
maxInt = maxBound :: Int
minInt :: Int
minInt = minBound :: Int
bigFloat :: Double
bigFloat = 3.999999999999 + 0.000000000005
exact :: Rational
exact = 3999999999999 % 1000000000000 + 5 % 1000000000000
deviation :: Double -> Rational -> Double
deviation approx exactVal = abs (approx - fromRational exactVal)

main :: IO ()
main = do
  putStrLn ("Max Integer using maxBound: " ++ show maxInt)
  putStrLn ("Min Integer using minBound: " ++ show minInt)
  putStrLn ("Floating-point Representation Demo: " ++ show bigFloat)
  printf "Floating-point with precision: %.18f\n" bigFloat
  print exact
  putStrLn ("Exact Rational Representation: " ++ show exact)
  putStrLn ("Exact Rational as Decimal: " ++ show (fromRational exact :: Double))
  putStrLn ("Deviation between Float and Rational: " ++ show (deviation bigFloat exact))

{-

Bounded Integers
1) Int is a fixed-size signed integer (usually 64-bit).
2) maxBound and minBound come from the Bounded typeclass.
3) Printing the limits of numeric types — the highest and lowest values Int can hold.



-}
