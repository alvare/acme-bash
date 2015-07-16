acme-bash
=========

Bash positional parameters for easy and safe argument handling.

## Usage

This package re-exports `$` as `$$` because it make more sense.

```haskell
module Main where

import Acme.Bash
import Prelude hiding (($))

main :: IO ()
main = do
    print $$ (read $2 :: Int)
    print $0

```

Then run `myProgram some 56` and it should output:

```
56
"myProgram"
```
