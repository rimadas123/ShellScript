#!/bin/bash

#user input
echo -n "Enter a number between 0-6"
read num

case $num in
	0)
	day=Sunday
	;;
	1)
	day=Monday
	;;
	2)
	day=Tuesday
	;;
	3)
	day=Wednesday
	;;
	4)
	day=Thursday
	;;
	5)
	day=Friday
	;;
	6)
	day=Saturday
	;;
	*)
	echo wrong input
	;;
esac

Day=$day
echo "It is: " $Day


