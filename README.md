acme-bash
=========

Bash positional parameters for easy and safe argument handling.

## Usage

This package re-exports `$` as `$$` just because it make more sense.

```haskell
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
```

Then run `my_program 23 some 46 lala` and it should output:

```
23
"my_program"
"46"
4
["23","some","46","lala"]
```

Enjoy.
