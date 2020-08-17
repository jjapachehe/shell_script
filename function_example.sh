#!/bin/bash
# Author: Jhon Apache

sum() {
    return $(( $1 + $2 ))
}

starts_with_a() {
    [[ $1 == [Aa]* ]];
    return $?
}

if starts_with_a ax; then
    echo "yes"
else
    echo "nope"
fi
