#!/bin/bash
# When file is executed, a filename containing the first word of the string entered is created
# $1 is the first parameter input by user ie message "Hello World"
filename=$( echo $1 | awk '{print$1}'  )

# $2 is the second parameter input by user ie case m, f or x
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

# $3 is the third parameter input by user ie ip address"
scp -q $filename.m4a admin@$3:/var/www/html/
echo "$filename.m4a"
echo "Listen to the message on http://$3/$filename.m4a"


