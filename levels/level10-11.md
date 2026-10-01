# Level 10 -> 11

## Aim: 
to find a password stored in the file data.txt, which contains base64 encoded data

##  My approach: 
 - locating `data.txt` file, prints ASCII text but the format is not understandable -> reading about base64 encoding
 - manpaging `base64` command -> finding `-d` flag used to decode
 - using `base64 -d data.txt` to get the password

## Solution: 
```bash
base64 -d data.txt
```

## Learning points: 
- base64 is a binary-to-text encoding that uses 64 printable characters to represent each 6-bit segment of a sequence of byte values. It was created to send raw binary data without losses or misinterpretations, which is crucial for older protocols and formats (e.g. email, XML, JSON, URL) 
- characteristic mark of base64 encoding is '=' or '==' at the end of line. It shows up when the input length isn't evenly divisible by 3 bytes (one leftover byte adds '==', two -> '=')
- `base64` command is used to encode a text into base64, while `base64 -d` decodes it back into its original form
