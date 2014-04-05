module Main where

import qualified Data.Map as M
import ProjectEuler.Problem001
import System.Environment (getArgs)
import System.Exit (exitSuccess)

solutions :: M.Map Integer Integer
solutions = M.fromList [(1, solution001)]

solution :: Integer -> Maybe Integer
solution number = M.lookup number solutions

main :: IO ()
main = do
    args <- getArgs
    case args of
        ["--help"] -> usage >> exitSuccess
        ["-h"] -> usage >> exitSuccess
        [number] -> case solution (read number :: Integer) of
            Just result -> print result
            Nothing -> putStrLn "There is no solution yet for this problem"
        _ -> usage >> exitSuccess
    where
        usage = putStrLn "Usage: cabal run problem [number]"
