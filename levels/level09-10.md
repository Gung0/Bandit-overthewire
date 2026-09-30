# Level 9 -> 10

## Aim: 
to find a password stored in the file data.txt in one of the few human-readable strings, and preceded by several ‘=’ characters

##  My approach: 
 - locating `data.txt` file, trying to cat it -> most of it is garbage
 - trying to find an easier way to scroll through a file without flooding the whole terminal window with garbage -> `less` 


## Solution: 
```bash
sort data.txt | uniq -u
```

## Learning points: 
- `uniq` only compares adjacent lines, so a file needs to be sorted first for 
  it to correctly detect all duplicates
- `uniq` removes duplicate lines (and keeps each line of unique text)
- `uniq -u` shows only the lines that appeared exactly once (no duplicates)
- pipeline | forwards the output of a command to another command
- `sort -u` and `uniq -u` are not the same. `sort -u` removes duplicates and 
  keeps one copy of every value (even ones that repeated many times), while 
  `uniq -u` keeps only values that had no duplicates
