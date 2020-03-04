#!/bin/bash 

echo "Enter a number between 1 to 100"
read number

low=1
high=100
mid=$(( ($low + $high) / 2 ))

while [ $low -ne $high ]
do
	if [ $number -eq $mid ]
	then
		break
	fi 
	mid=$(( ($low + $high) / 2 ))
	echo "your number is less than" $mid "press 1 or if no than press 2" 
	read choice
	mid=$(( ($low + $high) / 2 ))
	if [ $choice -eq 1 ]
	then
		high=$(( $mid - 1 ))
	elif [ $choice -eq 2 ]
	then
		low=$mid
	else
		echo "wrong input"
	fi 
done
echo "the number you guessed was" $mid
