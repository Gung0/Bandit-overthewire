# Level 7 -> 8

## Aim: 
to find a password stored in the file data.txt next to the word millionth

##  My approach: 
 - looking around by `ls -la` -> the result shows data.txt file
 - catting the file gives a tremendous amount of lines, trying the suggested commands on the webpage
 - researching the `grep` flag in its manpage -> getting the synopsis to use `grep PATTERN [FILE]`
 - using the command `grep millionth data.txt` -> the results displays the password next to the found word 'millionth'


## Solution: 
```bash
grep millionth data.txt
```

## Learning points: 
- `grep` searches for patterns in the file, which proves to be useful when a file has too many 
  lines to look through manually (`cat` alone wasn't practical here)
