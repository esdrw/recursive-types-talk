# A talk on recursive types
This talk was presented at LambdaConf 2018. Please download `recursive-types.pdf` for the best slide viewing experience.

### `implementation/`
Haskell code for the implementation of the Y Combinator.

I use [stack](https://docs.haskellstack.org/en/stable/README/) with a [global configuration](https://docs.haskellstack.org/en/stable/yaml_configuration/) to run Haskell. After setting up stack, use
```
stack ghc y-combinator.hs
```
to compile the program, and
```
./y-combinator.hs
```
to run it. You can also use
```
stack ghci y-combinator.hs
```
to load the defined functions into ghci.

### `slides/`
These slides were complied using XeLaTeX using the [Metropolis](https://github.com/matze/mtheme) theme.
