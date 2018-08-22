-- Sub-string divisibility
-- Problem 43
--
-- The number, 1406357289, is a 0 to 9 pandigital number because it is 
-- made up of each of the digits 0 to 9 in some order, 
-- but it also has a rather interesting sub-string divisibility property.
-- 
-- Let d1 be the 1st digit, d2 be the 2nd digit, and so on. 
-- In this way, we note the following:
-- 
--  d2d3d4=406 is divisible by 2
--  d3d4d5=063 is divisible by 3
--  d4d5d6=635 is divisible by 5
--  d5d6d7=357 is divisible by 7
--  d6d7d8=572 is divisible by 11
--  d7d8d9=728 is divisible by 13
--  d8d9d10=289 is divisible by 17
--
-- Find the sum of all 0 to 9 pandigital numbers with this property.

import Data.List (permutations, tails)

divisors :: [Integer]
divisors = [2, 3, 5, 7, 11, 13, 17]

toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits x = toDigits (x `div` 10) ++ [x `mod` 10]

fromDigits :: [Integer] -> Integer
fromDigits = foldl addDigit 0
    where addDigit num d = 10*num + d

groupBy :: Int -> [a] -> [[a]]
groupBy n = takeWhile (\l -> length l == 3) . grouped
    where grouped = map (take n) . tails

isDivisor :: Integral a => a -> a -> Bool
isDivisor d x = rem x d == 0

subStringDivisible :: [Integer] -> Bool
subStringDivisible = and . zipWith isDivisor divisors . map fromDigits . drop 1 . groupBy 3

answer = sum $ map fromDigits $ filter subStringDivisible $ permutations [0..9]
