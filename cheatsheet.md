# Cheatsheet

Commands collected while solving Bandit levels, grouped by topic. 

## Connecting 
``` bash
ssh bandit0@bandit.labs.overthewire.org -p 2220   # -p indicates a port 
```

## Reconnaisance 
``` bash
ls -la               # long listing, including hidden files
file ./*             # detects the type of every file from its content, ./ keeps names that start with a dash from being read as options
less file            # scrolls through a long file (q to quit)
cat file             # reads a file
```

## Special filenames
``` bash
cat ./-                                      # name is a dash, ./ turns it into a path
cat ./"--spaces in this name--"              # spaces need quotes 
```

## Searching
``` bash
find                                          # searches for files in a directory hierarchy
find -name file.txt                           # searches for a file of the given name
find / file.txt                               # searches for files in the whole system (starting from root) 
find -size 1033c                              # exact size in bytes (c = bytes)
find -user bandit7 -group bandit6             # by owner and group
find ! -executable                            # files that are NOT executable (! is negation)
grep pattern file                             # prints lines containing a pattern
grep -F '[pwn]' file                          # fixed string, brackets are literal 
```

## Text processing
```bash
sort data.txt | uniq -u                       # prints lines that occur exactly one (for uniq to work, the file must be sorted first)
sort data.txt | uniq -c                       # counts occurrences of each line
strings data.txt | grep "=="                  # shows printable text from a binary file, then filters
tr 'A-Za-z' 'N-ZA-Mn-za-m'                    # applies ROT13 cipher (translates characters), both encodes and decodes 
```

## Redirection and pipes
```bash
command > file                                # writes output of a command to a file (overwrites)
command >> file                               # appends to a file (instead of overwriting)
command < file                                # reads input from a file
command1 | command2                           # sends the output of one command into another
```


## Encoding and compression
```bash
base64 -d data.txt                                # decode base64 (without -d it encodes)
xxd -r hexdump                                    # reverses a hexdump into binary 
```

## Globbing
```bash
- `*` is expanded by the shell before the command runs. It matches one directory level and skips hidden files.
- `echo inhere/*` shows what a pattern expands to.
```


## Shell notes

This repo assumes zsh, which is Kali's default shell (checked by `echo $SHELL`).

- `**/*` recursive glob works right away in zsh.
- In bash, `**` behaves like a regular `*` unless `shopt -s globstar` is run first.
