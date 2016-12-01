{-# LANGUAGE DuplicateRecordFields #-}

module Types where

import Data.Set

data User = User {
   name         :: String
  ,userId       :: Int
  ,requirements :: Set Attrb
  ,allowances   :: Set Attrb
 } deriving (Show)

data Space = Space {
   name         :: String
  ,spaceId      :: Int
  ,requirements :: Set Attrb
  ,allowances   :: Set Attrb
 } deriving (Show)

data Attrb = 
    NoSchool  
  | HasSecEight 
  | AllowPets  
 deriving (Ord,Eq,Show)
