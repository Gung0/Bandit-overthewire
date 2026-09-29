# Level 6 -> 7

## Aim: 
to find a password stored somewhere on the server and has all of the following properties: <br>
owned by user bandit7 <br>
owned by group bandit6 <br>
33 bytes in size <br>

##  My approach: 
 - looking around by `ls -la *` in the whole system -> crazy amount of files (no wonder) 
 - looking up find manpage and trying to locate flag for owner and group (size command already known) -> finding `-user name` and `-group name` flags
 - putting the flags altogether `find / -user bandit7 -group bandit6 -size 33c` -> displaying many system/permission errors but resulting in the file `./var/lib/dpkg/info/bandit7.password`
 - catting the file gives the password


## Solution: 
```bash
find / -user bandit7 -group bandit6 -size 33c
cat ./var/lib/dpkg/info/bandit7.password
```

## Learning points: 
- `find` takes a starting path as its first argument, using `/` searches the entire filesystem from the root down
