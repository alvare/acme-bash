module Acme.Bash
    ( ($)
    , ($$)
    ) where

import           System.Environment
import           System.IO.Unsafe

import qualified Prelude
import           Prelude hiding (($))



($) :: (String -> b) -> Int -> b
f $ 0 = f (unsafePerformIO getProgName)
f $ n = f (arArgs n)

($$) = (Prelude.$)
infixr 0 $$

arArgs :: Int -> String
arArgs n = unsafePerformIO $$ do
               args <- getArgs
               case (length args) >= n of
                   True -> return $$ args !! (n - 1)
                   False -> return ""
