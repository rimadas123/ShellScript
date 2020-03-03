#!/bin/bash

#user input
echo Enter a year
read year

y=$year

a=$(( $y % 4 ))
b=$(( $y % 100 ))
c=$(( $y % 400 ))

if [[ $a -eq 0 && $b -ne 0 || $c -eq 0 ]]
then
	echo "is leap year!"
else
	echo "is not a leap year"
fi
