{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedStrings #-}
module Main where

import Types
import Solver

import Tests.Simple
import Data.Aeson

main :: IO ()
--main = putStrLn $ prettyOut $ findPairing [h1,h2] [s1,s2]
--main = print $ Data.Aeson.encode h1
main = print $ show $ (Data.Aeson.decode x :: Maybe User)

x = "{\"_id\":{\"$id\":\"58449d542713910f068b4568\"},\"name\":\"Mark\",\"requirements\":[\"AllowPets\",\"NoSchool\"],\"allowances\":[\"HasSecEight\"],\"countId\":1}"

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
