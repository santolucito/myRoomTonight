{-# LANGUAGE DuplicateRecordFields #-}

module Solver where

--this implementation is not polymorhpic which is a pain
--TODO, reimplement
import Data.Algorithm.Munkres
import Types
import Data.Array.Unboxed
import qualified Data.Set as S
import Data.Maybe
import Data.List 

encode :: [User] -> [Space] -> UArray (Int,Int) Int
encode us ss = 
 let
   allPairs = [(u,s) | u<-us, s<-ss]
   allCostsPairAssocs = map (\p -> (toIntPair p,cost p)) allPairs
 in
  array ((1,1),(length us, length ss)) allCostsPairAssocs

decode :: [User] -> [Space] -> ([(Int,Int)], Int) -> ([(User,Space)], Int)
decode us ss (ps, c) =
 (fromIntPairs us ss ps,c) 

findPairing :: [User] -> [Space] -> ([(User,Space)], Int)
findPairing us ss = 
  decode us ss $ hungarianMethodInt$ encode us ss

--Cost is either 0 or 1, housed or not
--the space must allow for all requirements of the user (location)
--the user must meet all requirements of the space (funding)
cost :: (User,Space)-> Int
cost (u,s) = 
 let
  canHouse =
    requirements (u::User) `S.isSubsetOf` allowances (s::Space)
    && 
    requirements (s::Space) `S.isSubsetOf` allowances (u::User)
 in
  if canHouse then 0 else 1

--this requries that all users and spaces have unique and strictly incrementing id
--taken verabtim, this requires matching over all users and spaces (no preprocessing)
--once we have a polymoprhic implementation of hungarianMethod, this can be dropped
toIntPair :: (User,Space) -> (Int,Int)
toIntPair (u,s) =
  (userId u, spaceId s)

--this is really terrible, replace hungarianMethod with polymorphic asap
fromIntPairs :: [User] -> [Space] -> [(Int,Int)] -> [(User,Space)]
fromIntPairs us ss ps =
 let
  toUser i  = fromJust$ find (\u -> userId u  == i) us
  toSpace i = fromJust$ find (\s -> spaceId s == i) ss
 in
  map (\(uid,sid) -> (toUser uid, toSpace sid)) ps

--TODO add test fromIntPairs.toIntPairs = id
