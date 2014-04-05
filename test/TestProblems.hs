module TestProblems (testProblems) where

import ProjectEuler.Problem001
import Test.HUnit

testProblems :: Test
testProblems = "Problems" ~: [solution001 ~=? 233168]
