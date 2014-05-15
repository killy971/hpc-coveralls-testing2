module Util where

takeUntil :: (a -> Bool) -> [a] -> [a]
takeUntil _ [] = []
takeUntil p (x:xs) | p x = [x]
                   | otherwise = x : takeUntil p xs
