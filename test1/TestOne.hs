{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# OPTIONS_GHC -fno-warn-type-defaults #-}

module Main where

import Util
import System.Exit ( exitFailure, exitSuccess )
import Test.HUnit

testTakeUntil = "takeUntil" ~: [
    takeUntil (> 1) [] ~=? [],
    takeUntil (> 1) [2] ~=? [2]]

testOne = [testTakeUntil]

main = do
    cnt <- runTestTT (test testOne)
    if errors cnt + failures cnt == 0
        then exitSuccess
        else exitFailure
