#!/bin/bash

# Simple note-taking script
# Author: Jhon Apache

# get the date
date=$(date)

# get the topic
topic="$1"

# filename to write 
filename="${HOME}/${topic}notes.txt"

#Ask for user input
read -p "Your note: " note

if [[ $note ]]; then
    echo "$(date): $note" >> "$filename"
    echo "note '$note' saved to $filename"
else
    echo "No input; note wasn't saved." 1>&2
fi