# Level 2 -> 3

## Aim: 
to access a password stored in a file called --spaces in this filename-- located in the home directory

##  My approach: 
 - listing files to locate the file --spaces in this filename--
 - trying cat with prefix ./--spaces in this filename-- -> failed, the shell split the name on spaces and passed cat four separate arguments
 - trying the same approach but with double quotes -> worked, the shell passed the whole name as one argument 

## Solution: 
```bash
cat ./"--spaces in this filename--"  
```
## Learning points: 
- double quotes should be used whenever a file has spaces in its name
- otherwise the shell splits the name into separate arguments
- as in the previous level, prefixing the filename with ./ allows the shell not to read -- as an option but as a filepath
