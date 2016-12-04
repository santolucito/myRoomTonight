{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}

module Types where

import Data.Set
import Data.Aeson
import GHC.Generics

data User = User {
   name         :: String
  ,countId       :: Int
  ,requirements :: Set Attrb
  ,allowances   :: Set Attrb
 } deriving (Generic,Show)

instance ToJSON User
instance FromJSON User
data Space = Space {
   name         :: String
  ,countId      :: Int
  ,requirements :: Set Attrb
  ,allowances   :: Set Attrb
 } deriving (Show)

data Attrb = 
    NoSchool  
  | HasSecEight 
  | AllowPets  
 deriving (Generic,Ord,Eq,Show)
instance ToJSON Attrb
instance FromJSON Attrb


