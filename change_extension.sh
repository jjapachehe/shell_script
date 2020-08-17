#!/bin/bash

# change filename extension
# Author: Jhon Apache

if [[ $# -ne 2 ]]; then
    echo "Need exactly two arguments"
fi

for i in *"$1"; do
    base=$(basename "$i" "$1")
    mv "$i" "${base}$2"
done