# Level 3 -> 4

## Aim: 
to find a password stored in a hidden file in the inhere directory

##  My approach: 
 - accessing 'inhere' directory and listing files using ls -> no files visible 
 - researching on how to list hidden files, another try with ```ls -la ``` command -> 3 files shown up: . .. and ...Hiding-From-You
 - ```ls -la ``` shows the filetype of files -> first two are directories (d letter), only the third is a file (-)
 - accessing the third file by cat 

## Solution: 
```bash
cd inhere
ls -la
cat ...Hiding-From-You
```

## Learning points: 
-  ```ls -la ``` command displays all hidden files as well as their filetypes, links, owner, group, size, time, and name
