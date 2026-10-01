# Level 9 -> 10

## Aim: 
to find a password stored in the file data.txt in one of the few human-readable strings, and preceded by several ‘=’ characters

##  My approach: 
 - locating `data.txt` file, trying to cat it -> most of it is garbage
 - trying to find an easier way to scroll through a file without flooding the whole terminal window with garbage -> `less` does the job
 - manpaging the suggested command `strings` -> it prints the sequence of printable characters in files
 - using `strings data.txt` -> displays ASCII text chunks, but still many lines to go through. Using a hint from the level description about '=' characters 
 - combining `strings` and `grep` commands with a pipeline `|` learnt in the previous level -> `strings data.txt | grep "=="` -> password is displayed          

## Solution: 
```bash
strings data.txt | grep "=="
```

## Learning points: 
- `less` can be used instaed of `cat` to scroll through the whole file instead of printing the whole output to the terminal window
- `strings` looks for printable characters in files and therefore is useful to sort out garbage (meaning machine language unreadable for humans) 
