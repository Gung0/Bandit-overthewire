# Level 12 -> 13

## Aim: 
to find a password stored in the file data.txt, which is a hexdump of a file that has been repeatedly compressed

##  My approach: 
 - `ls` shows `data.txt`, scrolling through it by `less` command -> unrecognisable format, researching it is a hexdump (hex numbers written as text)
 - reading the level hints and manpages (`man xxd`, `man tar`, `man gzip`, `man bzip2`) -> `xxd -r` reverses a hexdump back to binary
 - running `xxd -r data.txt` -> binary garbage floods the terminal
 - the hint suggests working in a temporary directory -> `mktemp -d`, then `cp` to copy the file into it
 - trying `gzip` and `tar -x` on the copied file -> it is still a hexdump, so reversing it has to come first
 - `xxd -r data2 > data3` redirecting to a file keeps the garbage off the screen -> `file data3` says gzip compressed data
 - `gzip -d` refuses files without the `.gz` extension -> adding it by `mv`, then `gzip -d` 
 - from here the same loop repeated 8 more times: `file` to check the type -> `mv` to add the matching extension -> unpack with the matching tool (gzip, bzip2, tar)
 - `tar -x data3.tar` fails with "Refusing to read archive contents from terminal" -> `-f` is needed to pass the archive name, `tar -xf data3.tar` works
 - the last `file` says ASCII text -> `cat` shows the password

## Solution: 
```bash
ls
file data.txt
mktemp -d
cd /tmp/tmp.23dpnduZe5
cp ~/data.txt data2
xxd -r data2 > data3
file data3
mv data3 data3.gz
gzip -d data3.gz
file data3
mv data3 data3.bz2
bzip2 -d data3.bz2
file data3
tar -xf data3
ls
file data5.bin
tar -xf data5.bin
ls
file data6.bin
mv data6.bin data6.bz2
bzip2 -d data6.bz2
file data6
tar -xf data6
ls
file data8.bin
mv data8.bin data8.gz
gzip -d data8.gz
file data8
cat data8
```

## Learning points: 
-  `file` checks the actual bytes of a file. A hexdump is plain text (hex digits written as ASCII characters), that's why it displays "ASCII text"
-  `gzip` and `bzip2` commands operate only on files with the corresponding extensions, e.g. `.gz`,`.bz2`
-  for `tar` to work on the given file, the `-f` flag must be given. Otherwise is reads from the input. `tar` also doesn't require a specific extension to be run
-  
