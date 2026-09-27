# Level 1 -> 2

## Aim: 
to find a password located in a file called - located in the home directory

##  My approach: 
 - checking files located in the home directory
 - checking files located in home directory 
 - trying cat command, doesn't work, "-" is interpreted as command prompt and is waiting for the input
 - checking manpage for cat command
 - trying several variations with cat containing "\-" \-\ 
 - trying to rename file with normal characters 
 - finding a way to access the file by the cat ./ variation
 - accessing the password for level2 

## Solution: 
cat ./- 

## Learning points: 
- prefixing cat commdn with ./ forces shell to treat it as a path, bypassing the special interpretation

