#!/bin/bash

#user input
echo -n "Enter a number of your choice"
read num

#check number for unit,tens,hundred,thousand place
case $num in
	1)
	n="It is in unit's place"
	;;
	10)
	n="It is in ten's place"
	;;
	100)
	n="It is in hundred's place"
	;;
	1000)
	n="It is in thousand's place"
	;;
	*)
	echo "It is a whole number"
	;;
esac

echo $n; 


