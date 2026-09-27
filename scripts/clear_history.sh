#!/bin/bash

# Clearing history of the terminal session

cat /dev/null > ~/.zsh_history
exec zsh
