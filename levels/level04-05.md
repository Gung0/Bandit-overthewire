# Level 5 -> 6

## Aim: 
to find a password stored in a file somewhere under the inhere directory, which has all of the following properties:
human-readable
1033 bytes in size
not executable

##  My approach: 
 - using `ls -la` to look around /inhere directory -> 20 directories inside
 - using `ls *` from the previous level to see all the files -> around ~120 files in total
 - checking types of files to determine first property by using `file inhere/*/*`, most of the files are ASCII text, meaning they're human-readable
 - trying `du inhere/*/*` command to determine second property - 1033 bytes in size -> no able to interprete results, trying `du -h inhere/*/*` -> displays files and directories' disk usage in human readable format (K in this case)  
 - can't find a way to specify exact number of bytes into the `du` command, changing approach to `find` command
 - find manpage shows c flag to determine the exact size of a file -> `find inhere/ -size 1033c` shows only one file, catting it looks like a password but needs further confirmation of 2 other properties
 - `file` shows its type of ASCII text -> first property checked
 - now researching on how to check if a file is not executable, checking manpage -> finding `-executable` flag, and that `!` is used to negate 
 -  combining flags into one file  `find inhere/ ! executable -size 1033c` -> displaying one file (the same as earlier)
 -  catting the file and accessing password

## Solution: 
```bash
find inhere/ ! executable -size 1033c
file inhere/maybehere07/.file2
```

## Learning points: 
- 
