# Level 10 -> 11

## Aim: 
to find a password stored in the file data.txt, which contains base64 encoded data

##  My approach: 
 - locating `data.txt` file, prints ASCII text but the format is not understandable -> reading about base64 encoding
 - according to Wikipedia, base64 is a binary-to-text encoding that uses 64 printable characters to represent each 6-bit segment of a sequence of byte values
 - manpaging `base64` command -> finding `-u` flag used to decode
 - using `base64 -d data.txt` to get the password

## Solution: 
```bash
base64 -d data.txt
```

## Learning points: 
-  
