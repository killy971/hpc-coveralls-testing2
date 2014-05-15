{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# OPTIONS_GHC -fno-warn-type-defaults #-}

module Main where

import Util
import System.Exit ( exitFailure, exitSuccess )
import Test.HUnit

testTakeUntil = "takeUntil" ~: [takeUntil (> 2) [2, 3] ~=? [2, 3]]

testTwo = [testTakeUntil]

main = do
    cnt <- runTestTT (test testTwo)
    if errors cnt + failures cnt == 0
        then exitSuccess
        else exitFailure
