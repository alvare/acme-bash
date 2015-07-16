module Main where

import Acme.Bash
import Prelude hiding (($))


main :: IO ()
main = do
    print $$ (read $1 :: Int)
    print $0
    print $3
    print ($#)
    print ($@)
