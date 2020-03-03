#!/bin/bash

#user input
echo -n "Enter a number between 0-9"
read num

case $num in
	0)
	n=zero
	;;
	1)
	n=one
	;;
	2)
	n=two
	;;
	3)
	n=three
	;;
	4)
	n=four
	;;
	5)
	n=five
	;;
	6)
	n=six
	;;
	7)
	n=seven
	;;
	8)
	n=eight
	;;
	9)
	n=nine
	;;
	*)
	echo "wrong input"
	;;
esac
num=$n
echo "the number to word conversion: " $num

