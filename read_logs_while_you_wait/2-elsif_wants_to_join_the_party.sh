#!/bin/bash
file="$1"
a=0
b=0
while read -r line || [[ -n "$line" ]]
do
    # Counting number of head requests
    if [[ "$line" =~ "HEAD" ]]
    then 
	a=$((a + 1))
    # Counting number of get requests	
    elif [[ "$line" =~ "GET" ]]
    then
       b=$((b + 1))
    fi
done < "$file"
echo "$a" # Displaying number of head requests
echo "$b" # Displaying number of get requests
