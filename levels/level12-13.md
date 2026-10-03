# Level 11 -> 12

## Aim: 
to find a password stored in the file data.txt, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions

##  My approach: 
 - `ls` shows `data.txt`, `less data.txt` -> it is a hexdump (hex numbers written as text)
 - reading the level hints and manpages (`man xxd`, `man tar`, `man gzip`, `man bzip2`) -> `xxd -r` reverses a hexdump back to binary
 - running `xxd -r data.txt` straight away -> binary garbage floods the terminal
 - the hint suggests working in a temporary directory -> `mktemp -d`, then `cp` inside it
 - trying `gzip` and `tar -x` on the copied file -> it is still a hexdump, so reversing it has to come first
 - `xxd -r data2 > data3` redirecting to a file keeps the garbage off the screen -> `file data3` says gzip compressed data
 - `gzip -d` refuses files without the `.gz` extension -> adding it by `mv`, then `gzip -d` 
 - from here the same loop repeated 8 more times: `file` to check the type -> `mv` to add the matching extension -> unpack with the matching tool (gzip, bzip2, tar)
 - `tar -x data3.tar` fails with "Refusing to read archive contents from terminal" -> `-f` is needed to pass the archive name, `tar -xf data3.tar` works
 - the last `file` says ASCII text -> `cat` shows the password

## Solution: 
```bash

```

## Learning points: 
-  
