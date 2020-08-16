#!/bin/bash

# Simple guessing game
# Author Jhon Apache

# get a random number < 100
target=$(($RANDOM % 100))

# Initialize the user's guess
guess=
until [[ $guess -eq $target ]]; do
    read -p "Take a guess: " guess
    if [[ $guess -lt $target ]]; then
        echo "Higher!"
    elif [[ $guess -gt $target ]]; then
        echo "Lower!"
    else
        echo "You found it!!!"
    fi
done

exit 0