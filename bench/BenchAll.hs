module Main where

import BenchProblems
import System.Exit ( exitFailure, exitSuccess )
import Test.HUnit

allBenchs :: [Test]
allBenchs = [benchProblems]

main :: IO Counts
main = do
    cnt <- runTestTT (test allBenchs)
    if errors cnt + failures cnt == 0
        then exitSuccess
        else exitFailure
