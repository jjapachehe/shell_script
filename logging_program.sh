#!/bin/bash
# Program to test the logging in background using exec commnand
# Author: Jhon Apache

if [[ $1 == "-l" ]]; then
    exec > logfile
fi

declare -i i=0
while true; do
    echo "I am still running $((++i))"
    sleep 5
done