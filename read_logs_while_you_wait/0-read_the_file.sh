#!/bin/bash
while IFS= read -r line # Loop to read input file's content
do 
    echo $line # Displays input file's content
done < "$1" # Exit when reaching end of file
