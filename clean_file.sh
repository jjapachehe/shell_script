#!/bin/bash
#Clean File
#Author: Jhon Apache
#This script remove the lines begin with # and blank spaces

function clean_file {
    sed -i '/^#/d;/^$/d' $1
}

#main
clean_file $1