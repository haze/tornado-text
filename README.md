# tornado-text
tornadotext in numerous languages

# guidelines
1. take text and tornado it. look at example shift functions
2. output either specified line amount (+ 1) or infinite (if none were given)

# contrib
* [nv-vn (nv)](https://github.com/nv-vn) [haskell, idris, scheme (guile), ocaml, bash]

* [hvze (haze)](https://github.com/hvze) [io, java, go, swift, rust``]

* [apteryx](https://github.com/apertix) [rust-help]

* [arianon](https://github.com/arianon) [ruby]

* [tso](https://github.com/generaltso) [php]

just pull request with your code in a folder and a output.txt and ill accept (if it meets guidelines)

# LoCs / Language

You can get this by running:

```bash
$ wc -l ./*/[Tt]ornado.* | head -$(ls -l | grep ^d | wc -l) | sort | awk '{split($2,x,"/");print x[2] ": " $1}' | column -t
haskell:  14
ocaml:    16
idris:    17
bash:     18
scheme:   23
io:       27
ruby:     31
java:     45
go:       50
rust:     55
swift:    57
```
