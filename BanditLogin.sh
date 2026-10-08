#!/bin/bash 

# Usage: ./BanditLogin.sh LevelFrom LevelTo LevelTo
# Usage: ./BanditLogin.sh 08 09 9

#echo sshpass -f ~/Bandit-overthewire/passwords/pass_"$1"_"$2" ssh bandit"$3"@bandit.labs.overthewire.org -p 2220 

sshpass -f ~/Bandit-overthewire/passwords/pass_"$1"_"$2" ssh bandit"$3"@bandit.labs.overthewire.org -p 2220 

# For future development: 
# - transforming digits with 0 prefix into normal digits and reverse
# - adding conditions checking if file exists 
