#!/bin/bash -x 

#variables
start=1

while [ $start -le 11 ]
do
	cal=$(( RANDOM%2 ))

	if [ $cal -eq 1 ]
	then
		echo "tail"
	else
		echo "head"
	fi
	(( start++ ))
done

