# Level 13 -> 14

## Aim: 
to log in to a next level (as bandit14) by the provided private SSH key

##  My approach: 
 - `ls -la` to look around -> `sshkey.private` owned by bandit14, readable by the bandit13 group
 - `file` identifies the file as OpenSSH private key
 - `cat /etc/bandit_pass/bandit14` -> "Permission denied", only bandit14 can read it
 - manpaging `ssh` -> `-i` takes the path to the identity file
 - trying to log in by ssh private key from the bandit13 session -> server says that connections from and to localhost are blocked, HINT file confirms it
 - changing direction, manpaging `scp` as this was another suggested command in the level description -> trying to send the key to my machine -> doesn't work (asks for the password of user on my local machine)
 - trying to copy the sshkey.private file from my local machine terminal using `scp -P 2220 bandit13@bandit.labs.overthewire.org ~/sshkey.private` -> the key is copied
 - repeating the command `ssh -i sshkey.private bandiy14@bandit.labs.overthewire.org -p2220` from my machine -> "Unprotected private key file! Permissions 0640 are too open"
 - changing the permissions of the `sshkey.private` file by `chmod 600 sshkey.private` (only the owner reads and writes it)
 - repeating the `ssh -i` command  -> logged in as bandit14, accessing the password by `cat /etc/bandit_pass/bandit14` 

## Solution: 
```bash
ls -la
exit
## on local machine
scp -P 2220 bandit13@bandit.labs.overthewire.org ~/sshkey.private
chmod 600 sshkey.private
ssh -i sshkey.private bandiy14@bandit.labs.overthewire.org -p2220
## on bandit14@
cat /etc/bandit_pass/bandit14
```

## Learning points: 
- `ssh -i` takes provided ssh key (as a path) and uses it to log in
- for SSH key to work in the `ssh -i` command, it must have restricted permissions (600 or 700)
- `scp` is used to securely transfer files and directories between systems over a network (works with ssh meaning all transferred data is encrypted)
- `scp -P` is used to indicate a port  
