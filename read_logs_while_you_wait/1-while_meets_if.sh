#!/bin/bash
file="$1" # File is the parameter to be passed by user

# Prints each line containing "HEAD"
while read -r line || [[ -n "$line" ]]; do # Loop to read input file content
    if [[ $line =~ "HEAD" ]]; then # Loop to search for lines containing the string HEAD
	echo $line # Displaying lines containing the string HEAD
    fi # Ends if loop
    done < $file # Exits input file
