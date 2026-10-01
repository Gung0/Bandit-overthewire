# Level 11 -> 12

## Aim: 
to find a password stored in the file data.txt, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions

##  My approach: 
 - locating `data.txt` file, prints ASCII text but can't make sense of it
 - reading about ROT13 cipher, finding its Unix implementation algorithm on Wikipedia
 - ``` bash
   $ # Map upper case A-Z to N-ZA-M and lower case a-z to n-za-m
   $ tr 'A-Za-z' 'N-ZA-Mn-za-m' <<< "Pack My Box With Five Dozen Liquor Jugs"
   Cnpx Zl Obk Jvgu Svir Qbmra Yvdhbe Whtf
   ```
- adjusting the command to the current environment by `tr 'A-Za-z' 'N-ZA-Mn-za-m' < data.txt` and getting the password

## Solution: 
```bash
tr 'A-Za-z' 'N-ZA-Mn-za-m' < data.txt
# or
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

## Learning points: 
- 
