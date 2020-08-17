#!/bin/bash

# Simple guessing game
# Author Jhon Apache

# get a random number 0 < target < 100
declare -ir target=$(( ($RANDOM % 100) + 1 ))

# Initialize the user's guess
declare -i guess=0

until (( guess == target )); do
    read -p "Take a guess: " guess

    # if guess is 0, it was not a number
    (( guess )) || continue

    if  (( guess < target )); then
        echo "Higher!"
    elif (( guess > target )); then
        echo "Lower!"
    else
        echo "You found it!!!"
    fi
done

exit 0