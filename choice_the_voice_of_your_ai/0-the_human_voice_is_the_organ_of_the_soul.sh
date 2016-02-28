#!/bin/bash

filename=$( echo $1 | awk '{print$1}'  )

case $2 in
    m)
	say -v Ralph -o "$filename.m4a" $1
	;;
    f)
	say -v Karen -o "$filename.m4a" $1
	;;
    x)
	say -v Zarvox -o "$filename.m4a" $1
	;;
esac

scp -q $filename.m4a admin@$3:/var/www/html/
echo "$filename.m4a"
echo "Listen to the message on http://$3/$filename.m4a"


