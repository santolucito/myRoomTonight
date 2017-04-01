{-# LANGUAGE OverloadedStrings #-}

module Pages.Index where

import Prelude
import qualified Prelude as P
import Data.Monoid (mempty)

import Happstack.Lite
import Text.Blaze.Html5
import qualified Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes
import qualified Text.Blaze.Html5.Attributes as A

import Template

index :: ServerPart Response
index =  ok $ embedInTemplate "home page" $ do
    section ! A.id "home-slider" $ do
	H.div ! class_ "container" $ H.div ! class_ "row" $ H.div ! class_ "main-slider" $ do
	    H.div ! class_ "slide-text" $ do
                h1 "Every patient deserves proper care, even after they leave the hospital"
		p "NextPlace is a tool to optimize the patient discharge process. We help ensure that patients get the care they need to avoid multiple trips to the hosptial. We connecting the hospital and social services for better post-treatment care"
		a ! href "#" ! class_ "btn btn-common" $ "REQUEST A DEMO"
	    img ! src "html/images/home/slider/hill.png" ! class_ "slider-hill" ! alt "slider image"
	    img ! src "html/images/home/slider/house.png" ! class_ "slider-house" ! alt "slider image"
	    img ! src "html/images/home/slider/sun.png" ! class_ "slider-sun" ! alt "slider image"
	    img ! src "html/images/home/slider/birds1.png" ! class_ "slider-birds1" ! alt "slider image"
	    img ! src "html/images/home/slider/birds2.png" ! class_ "slider-birds2" ! alt "slider image"
	H.div ! class_ "preloader" $ i ! class_ "fa fa-sun-o fa-spin" $ mempty
    
    -- /#home-slider
    section ! A.id "services" $ H.div ! class_ "container" $ H.div ! class_ "row" $ do
	mapM_ 
	  (\(i,t,d) -> 
	    H.div ! class_ "col-sm-4 text-center padding wow fadeIn" ! dataAttribute "wow-duration" "1000ms" ! dataAttribute "wow-delay" "300ms" $ H.div ! class_ "single-service" $ do
	      H.div ! class_ "wow scaleIn" ! dataAttribute "wow-duration" "500ms" ! dataAttribute "wow-delay" "300ms" $ img ! src i ! alt ""
	      h2 t
	      p d)
	   [("html/images/home/icon1.png","Arriving at the hosital","Each patient visit is an expensive investment for a hospital, especially when that patient may not have adequate coverage.")
	   ,("html/images/home/icon2.png","Leaving the hospital","If a patient does not have a place to go after treatment, or needs follow up care, finding a space can be a difficult task.")
	   ,("html/images/home/icon3.png","Staying healthy","Choosing the right desitination for post-treatment if critical to keeping a patient healthy, out of the hospital, and reducing costs.")]
    
    -- /#action
{-    section ! A.id "features" $ H.div ! class_ "container" $ H.div ! class_ "row" $ do
	H.div ! class_ "single-features" $ do
	    H.div ! class_ "col-sm-5 wow fadeInLeft" ! dataAttribute "wow-duration" "500ms" ! dataAttribute "wow-delay" "300ms" $ img ! src "html/images/home/IMG_0009.JPG" ! class_ "img-responsive" ! alt ""
	    H.div ! class_ "col-sm-6 wow fadeInRight" ! dataAttribute "wow-duration" "500ms" ! dataAttribute "wow-delay" "300ms" $ do
		h2 "Interactive Learning"
		p "Learning happens both inside the classroom and out. The World Scholar Program is not only a seminar series, but an entire experience for the school. Combining traditional lectures, with hand-on activities and active learning, students come away from the World Scholars program with a renewed sense of vigour and exploration in their studies."
	
	H.div ! class_ "single-features" $ do
	    H.div ! class_ "col-sm-6 col-sm-offset-1 align-right wow fadeInLeft" ! dataAttribute "wow-duration" "500ms" ! dataAttribute "wow-delay" "300ms" $ do
		h2 "Passion for Humanities and Sciences"
		p "From Acting to Computer Science, the world scholars bring a range of experience to campus that enlivens the atmosphere, and asks students to push beyond their comfort zone."
	    H.div ! class_ "col-sm-5 wow fadeInRight" ! dataAttribute "wow-duration" "500ms" ! dataAttribute "wow-delay" "300ms" $ img ! src "html/images/home/IMG_1211.JPG" ! class_ "img-responsive" ! alt ""
	
	H.div ! class_ "single-features" $ do
	    H.div ! class_ "col-sm-5 wow fadeInLeft" ! dataAttribute "wow-duration" "500ms" ! dataAttribute "wow-delay" "300ms" $ img ! src "html/images/home/IMG_1376.JPG" ! class_ "img-responsive" ! alt ""
	    H.div ! class_ "col-sm-6 wow fadeInRight" ! dataAttribute "wow-duration" "500ms" ! dataAttribute "wow-delay" "300ms" $ do
		h2 "Experienced and Enthusiastic"
		p "The world scholars come from both academia and industry, giving students a look into what sort of careers are possible when you dream big."
    -- /#features
    
    section ! A.id "clients" $ H.div ! class_ "container" $ H.div ! class_ "row" $ H.div ! class_ "col-sm-12" $ do
	H.div ! class_ "clients text-center wow fadeInUp" ! dataAttribute "wow-duration" "500ms" ! dataAttribute "wow-delay" "300ms" $ do
	    p $ img ! src "html/images/home/clients.png" ! class_ "img-responsive" ! alt ""
	    h1 ! class_ "title" $ "Past hosts"
	    p $ do
		"The World Scholars have been on tour before, visiting schools around the world."
		br
		"Here are a few of the places we have been."
	H.div ! class_ "clients-logo wow fadeIn" ! dataAttribute "wow-duration" "1000ms" ! dataAttribute "wow-delay" "600ms" $ do
	    H.div ! class_ "col-xs-3 col-sm-2" $ do
	      a ! href "#" $ img ! src "html/images/home/ggu_logo.png" ! class_ "img-responsive" ! alt ""
	      p "Nonsan, South Korea"
-}
	    {-H.div ! class_ "col-xs-3 col-sm-2" $ a ! href "#" $ img ! src "html/images/home/client2.png" ! class_ "img-responsive" ! alt ""
	    H.div ! class_ "col-xs-3 col-sm-2" $ a ! href "#" $ img ! src "html/images/home/client3.png" ! class_ "img-responsive" ! alt ""
	    H.div ! class_ "col-xs-3 col-sm-2" $ a ! href "#" $ img ! src "html/images/home/client4.png" ! class_ "img-responsive" ! alt ""
	    H.div ! class_ "col-xs-3 col-sm-2" $ a ! href "#" $ img ! src "html/images/home/client5.png" ! class_ "img-responsive" ! alt ""
	    H.div ! class_ "col-xs-3 col-sm-2" $ a ! href "#" $ img ! src "html/images/home/client6.png" ! class_ "img-responsive" ! alt ""-}
    -- /#clients
