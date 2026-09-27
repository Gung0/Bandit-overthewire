# Level 0 -> 1

# Aim: log in as Bandit0 and find a password for the next level

# My approach: logging in by credentials provided in the previous level. Then doing a reconnaissance by checking the files in the current directory. Ending up with accessing the readme file and password

# Solution
ssh bandit0@bandit.labs.overthewire.org -p 2220
ls 
cat readme 

# Learning points: 
# - ssh logging with a specified port (-p flag) 
# ls command lists files 
# cat command reads files 
