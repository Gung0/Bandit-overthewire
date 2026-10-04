# Cheatsheet

Commands collected while solving Bandit levels, grouped by topic. 

## Connecting 
``` bash
ssh bandit0@bandit.labs.overthewire.org -p 2220   # -p indicates a port 
```

## Reconnaisance 
``` bash
ls -la               # long listing, including hidden files
file ./*             # detect the type of every file from its content
less file            # scroll through a long file (q to quit)
cat file             # reads a file
```

## Special filenames
``` bash
cat ./-                                      # name is a dash, ./ turns it (and any other special character) into a path
cat ./"--spaces in this name--"              # spaces need quotes 
 
```

## Searching
``` bash
find -size 1033c                              # exact size in bytes (c = bytes)
find -user bandit7 -group bandit6             # by owner and group
find ! -executable                            # files that are NOT executable (! is negation)
grep pattern file                             # prints lines containing a pattern
grep -F '[pwn]' file                          # fixed string, brackets are literal 
 
```


## Shell notes

This repo assumes zsh, which is Kali's default shell (checked by `echo $SHELL`).

- `**/*` recursive glob works right away in zsh.
- In bash, `**` behaves like a regular `*` unless `shopt -s globstar` is run first.
