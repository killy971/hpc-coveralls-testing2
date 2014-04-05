module Main where

import System.Exit ( exitFailure, exitSuccess )
import TestProblems
import Test.HUnit

allTests :: [Test]
allTests = [testProblems]

main :: IO Counts
main = do
    cnt <- runTestTT (test allTests)
    if errors cnt + failures cnt == 0
        then exitSuccess
        else exitFailure
