#!/bin/bash

# Simple note-taking script
# Author: Jhon Apache

# get the date
date=$(date)

# get the topic
topic="$1"

set -x
# filename to write 
filename="${HOME}/${topic}notes.txt"
set +x

#Ask for user input
read -p "Your note: " note

echo "$(date): $note" >> "$filename"
echo "note '$note' saved to $filename"