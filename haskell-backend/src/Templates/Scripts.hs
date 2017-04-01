{-# LANGUAGE OverloadedStrings #-}
module Templates.Scripts where

import Prelude
import qualified Prelude as P
import Data.Monoid (mempty)

import Text.Blaze.Html5
import qualified Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes
import qualified Text.Blaze.Html5.Attributes as A

htmlScripts :: Html
htmlScripts =
  mapM_ (\x-> script ! type_ "text/javascript" ! src x $ mempty)
    ["html/js/jquery.js"
    ,"html/js/bootstrap.min.js"
    ,"html/js/lightbox.min.js"
    ,"html/js/wow.min.js"
    ,"html/js/jquery.countTo.js"
    ,"html/js/main.js"]

