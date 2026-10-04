# Cheatsheet

Commands collected while solving Bandit levels, grouped by topic. 

## Connecting 
``` bash
ssh bandit0@bandit.labs.overthewire.org -p 2220   # -p indicates a port 
```

## Reconnaissance 
``` bash
ls -la                                       # long listing, including hidden files
file ./*                                     # detects the type of every file from its content, ./ keeps names that start with a dash from being read as options
less file                                    # scrolls through a long file (q to quit)
cat file                                     # reads a file
##### SPECIAL FILENAMES #####
cat ./-                                      # name is a dash, ./ turns it into a path
cat ./"--spaces in this name--"              # spaces need quotes 
```

## Searching
``` bash
find                                          # searches for files in a directory hierarchy
find -name file                               # searches for a file of the given name
find / file                                   # searches for files in the whole system (starting from root) 
find -size 1033c                              # exact size in bytes (c = bytes)
find -user bandit7 -group bandit6             # by owner and group
find ! -executable                            # files that are NOT executable (! is negation)
grep pattern file                             # prints lines containing a pattern
grep -F '[pwn]' file                          # fixed string, brackets are literal 
```

## File operations
``` bash
cp data.txt new_data.txt                      # copies a file
mv old_name new_name                          # renames a file (also moves it to another directory)
mkdir folder1                                 # creates a directory
mktemp -d                                     # creates a temporary directory with a random name under /tmp
```

## Text processing
``` bash
sort data.txt | uniq -u                       # prints lines that occur exactly once (for uniq to work, the file must be sorted first)
sort data.txt | uniq -c                       # counts occurrences of each line
strings data.txt | grep "=="                  # shows printable text from a binary file, then filters
tr 'A-Za-z' 'N-ZA-Mn-za-m' < data.txt         # applies ROT13 (translates characters), used to encode and decode
```

## Redirection and pipes
``` bash
command > file                                # writes output of a command to a file (overwrites)
command >> file                               # appends to a file (instead of overwriting)
command < file                                # reads input from a file
command1 | command2                           # sends the output of one command into another
```


## Encoding and compression
```bash
base64 -d data.txt                                # decode base64 (without -d it encodes)
xxd -r hexdump > data.txt                         # reverses a hexdump into binary, then redirects the output into a file
gzip -d data.gz                                   # decompresses a gzip file (needs the .gz extension), without -d it compresses
bzip2 -d data.bz2                                 # decompresses a bzip2 file (needs the .bz2 extension), without -d it compresses
tar -xf archive.tar                               # extracts an archive (-f gives the file name), without -x it makes a file into an archive
```

## Globbing
- `*` is expanded by the shell before the command runs. It matches one directory level and skips hidden files, e.g.:
- `echo inhere/*` shows what a pattern expands to



## Shell notes

This repo assumes zsh, which is Kali's default shell (checked by `echo $SHELL`).

- `**/*` recursive glob works right away in zsh.
- In bash, `**` behaves like a regular `*` unless `shopt -s globstar` is run first.
