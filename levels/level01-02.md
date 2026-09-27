# Level 1 -> 2

## Aim: 
to find a password located in a file called - located in the home directory

##  My approach: 
 - checking files located in the home directory
 - checking files located in home directory 
 - trying cat command, doesn't work, "-" is interpreted as a flag, and is waiting for the input
 - checking manpage for cat command
 - trying several variations with cat containing "\-" \-\ 
 - trying to rename file with normal characters - no permission to do so
 - finding a way to access the file by the cat ./ variation
 - accessing the password for level2 

## Solution: 
```bash
cat ./- 
```
## Learning points: 
- prefixing cat command with ./ forces shell to treat it as a path, bypassing the special interpretation

## Logs

<img width="1024" height="784" alt="image" src="https://github.com/user-attachments/assets/07954fb5-8eff-48fb-8e16-31d8bf6f5f12" />

