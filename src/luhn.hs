module Luhn where

import Data.Char

toDigits :: Integer -> [Integer]
toDigits n
  | n <= 0 = []
  | otherwise = map (toInteger. digitToInt) $ show n

toDigitsRev :: Integer -> [Integer]
toDigitsRev = reverse . toDigits

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther ns = zipWith (*) ns (cycle [1, 2])

sumDigits :: [Integer] -> Integer
sumDigits = sum . (concatMap toDigits)

validate :: Integer -> Bool
validate n = (calculate n) `mod` 10 == 0
  where
    calculate :: Integer -> Integer
    calculate = sumDigits . doubleEveryOther . toDigitsRev

main :: IO ()
main = do
  putStr "Enter a number: "
  n <- getLine
  putStrLn . show $ validate (read n)
