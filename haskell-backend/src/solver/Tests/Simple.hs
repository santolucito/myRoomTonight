{-# LANGUAGE DuplicateRecordFields #-}
module Tests.Simple where

import Types
import Data.Set

h1 = User 
  {name="Mark"
  ,countId=1
  ,requirements = fromList [NoSchool, AllowPets]
  ,allowances = fromList [HasSecEight]
  }

h2 = User 
  {name="Sri"
  ,countId=2
  ,requirements = fromList [AllowPets]
  ,allowances = fromList [HasSecEight]
  }

s1 = Space
  {name="New Haven Shelter"
  ,countId=1
  ,requirements = fromList [HasSecEight]
  ,allowances = fromList [NoSchool, AllowPets]
  }

s2 = Space
  {name="Fair Haven Shelter"
  ,countId=2
  ,requirements = fromList [HasSecEight]
  ,allowances = fromList [AllowPets]
  }
  
