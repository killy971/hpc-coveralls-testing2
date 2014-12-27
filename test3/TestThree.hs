{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# OPTIONS_GHC -fno-warn-type-defaults #-}

module Main where

import Util
import System.Exit ( exitFailure, exitSuccess )
import Test.HUnit

testTakeUntil = "takeUntil" ~: [takeUntil (> 1) [1, 2] ~=? [1, 2]]

testThree = [testTakeUntil]

main = do
    cnt <- runTestTT (test testThree)
    if errors cnt + failures cnt == 0
        then exitSuccess
        else exitFailure
