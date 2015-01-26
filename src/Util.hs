module Util where

takeUntil :: (a -> Bool) -> [a] -> [a]
takeUntil _ [] = []
takeUntil p (x:xs) = if p x
    then [x]
    else x : takeUntil p xs
