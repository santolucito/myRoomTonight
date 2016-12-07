module Reader where

import Data.Aeson

readOne :: String -> Maybe User
readOne x = 
  decode x :: Maybe User
