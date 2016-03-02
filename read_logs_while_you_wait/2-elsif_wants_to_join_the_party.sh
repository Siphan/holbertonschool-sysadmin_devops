#!/bin/bash
file="$1"

head_number=0
get_number=0

while read -r line || [[ -n "$line" ]]; do
    head_number_line=$( echo $line | grep -o "HEAD"| wc -l ) # Counting number of head requests
    get_number_line=$( echo $line | grep -o "GET"| wc -l ) # Counting number of get requests
    head_number=$(( head_number + head_number_line ))
    get_number=$(( get_number + get_number_line ))
done < $file

echo $head_number # Displaying number of head requests
echo $get_number # Displaying number of get requests
