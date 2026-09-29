# Level 5 -> 6

## Aim: 
to find a password stored in a file somewhere under the inhere directory, which has all of the following properties: human-readable, 1033 bytes in size, not executable

##  My approach: 
 - using `ls -la` to look around /inhere directory -> 20 directories inside
 - using `ls *` from the previous level to see all the files -> around ~120 files in total
 - checking types of files to determine first property by using `file inhere/*/*`, most of the files are ASCII text, meaning they're human-readable
 - trying `du inhere/*/*` command to determine second property - 1033 bytes in size -> unable to interpret results, trying `du -h inhere/*/*` -> displays files and directories' disk usage in human readable format (K in this case)  
 - can't find a way to specify exact number of bytes into the `du` command, changing approach to `find` command
 - find manpage shows c flag to determine the exact size of a file -> `find inhere/ -size 1033c` shows only one file, catting it looks like a password but needs further confirmation of 2 other properties
 - `file` shows its type of ASCII text -> first property checked
 - now researching on how to check if a file is not executable, checking manpage -> finding `-executable` flag, and that `!` is used to negate 
 -  combining flags into one file  `find inhere/ ! -executable -size 1033c` -> displaying one file (the same as earlier)
 -  catting the file and accessing password

## Solution: 
```bash
find inhere/ ! -executable -size 1033c
file inhere/maybehere07/.file2
cat inhere/maybehere07/.file2
```

## Learning points: 
- `du` by default shows how much disk space a file actually takes up, not how many bytes its content has.
- Although a command `du -b --apparent-size inhere/*/*` could have been used, `find` is still a better tool to look for a file of exact size because it filters the results right away
- `find` has an innate recurrence meaning there's no need to specify wildcards because it always goes down the catalogue tree
- when it comes to other commands, such as `ls`, `du`, `file`, `cat`, a recursive glob `**/*` needs to be used to ensure all files at any  depth will be matched
