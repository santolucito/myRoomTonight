{-# LANGUAGE DuplicateRecordFields #-}
module Main where

import Types
import Solver

import Tests.Simple

main :: IO ()
main = putStrLn $ prettyOut $ findPairing [h1,h2] [s1,s2]

prettyOut :: ([(User,Space)], Int) -> String
prettyOut (ps,c) =
 let 
  assignment (u,s) = (show $ name (u::User))++" stays at "++
                     (show $ name (s::Space))
  unmatched = show c
 in
   "Made assignments...\n"++ 
   (unlines $ map assignment ps)++
   "Could not house "++ show c
