#!/bin/bash

# change filename extension
# parameters: the first parameter is the extension that file currently has, the second is the new extension
# Author: Jhon Apache

[[ $# -ne 2 ]] && { echo "Need exactly two arguments" >&2; exit 1; }

for i in *"$1"; do
    mv "$i" "${i/%$1/$2}"
done