#!/bin/bash

# change filename extension
# Author: Jhon Apache

[[ $# -ne 2 ]] && { echo "Need exactly two arguments" >&2; exit 1; }

for i in *"$1"; do
    mv "$i" "${i/%$1/$2}"
done