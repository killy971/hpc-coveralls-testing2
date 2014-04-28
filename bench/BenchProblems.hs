module BenchProblems (benchProblems) where

import ProjectEuler.Problem001
import Test.HUnit

benchProblems :: Test
benchProblems = "Problems" ~: [solution001 ~=? 233168]
