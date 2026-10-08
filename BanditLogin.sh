#!/bin/bash 

#echo /home/kali/Bandit-overthewire/passwords/*"$1"*"$2"*
#cat /home/kali/Bandit-overthewire/passwords/*"$1"*"$2"*

# ./script LevelFrom LevelTo LevelTo

#echo sshpass -f ~/Bandit-overthewire/passwords/pass_"$1"_"$2" ssh bandit"$3"@bandit.labs.overthewire.org -p 2220 

sshpass -f ~/Bandit-overthewire/passwords/pass_"$1"_"$2" ssh bandit"$3"@bandit.labs.overthewire.org -p 2220 

