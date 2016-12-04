{-# LANGUAGE DuplicateRecordFields #-}
module Tests.Simple where

import Types
import Data.Set

h1 = User 
  {name="Mark"
  ,userId=1
  ,requirements = fromList [NoSchool, AllowPets]
  ,allowances = fromList [HasSecEight]
  }

h2 = User 
  {name="Sri"
  ,userId=2
  ,requirements = fromList [AllowPets]
  ,allowances = fromList [HasSecEight]
  }

s1 = Space
  {name="New Haven Shelter"
  ,spaceId=1
  ,requirements = fromList [HasSecEight]
  ,allowances = fromList [NoSchool, AllowPets]
  }

s2 = Space
  {name="Fair Haven Shelter"
  ,spaceId=2
  ,requirements = fromList [HasSecEight]
  ,allowances = fromList [AllowPets]
  }
  
