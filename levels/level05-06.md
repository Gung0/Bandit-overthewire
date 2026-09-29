# Level 4 -> 5

## Aim: 
to find a password stored in the only human-readable file in the inhere directory

##  My approach: 
 - accessing inhere directory, using `ls -la` to look around -> 10 files visible
 - catting a first file -> garbage, no point in trying to cat all of them 
 - looking for a way to display only human-readable file -> `file` determines the actual type of file, checking what it would display on the first file -> displays `inhere/-file00: data`
 - looking for a way to use the file command to all files at once -> trying `file inhere/` -> displays `inhere/: directory`
 - finding a note on wildcards, implementing it by `file inhere/* ` -> displays all files and their types -> 9 files are data, but one is ASCII text
 - catting the file and accessing the password

## Solution: 
```bash
file inhere/*
cat inhere/-file07

```

## Learning points: 
- `*`is a special sign for the shell, it makes the shell match every file meeting the criteria (in this case it's containing any character)
- using `file`  on a directory alone doesn't go deeper into it, just displays `directory`
