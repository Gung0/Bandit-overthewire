# Level 8 -> 9

## Aim: 
to find a password stored in the file data.txt that is the only line of text that occurs only once

##  My approach: 
 - locating `data.txt` file, trying to cat it -> great number of lines
 - manpaging suggested commands `uniq` and `sort` -> trying to implement them
 - `uniq data.txt` prints the same amount of lines, `uniq -u` doesn't work
 - hint at the end of the mapnage says that 'uniq' does not detect repeated lines unless they are adjacent. Makes sense since right not the lines are scattered. Sorting should come first
 -  as manpage says, `sort` writes sorted concatenation of all FILE(s) to standard output -> `sort -u` prints only unique lines, limited but still too many to be useful 
 -  two commands needs to be combined now, looking for another hint at the level webpage. Finding info about piping and redirection by using `|` -> combining the commands into `sort data.txt | uniq -u` -> one line is given that is the searched password  


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
