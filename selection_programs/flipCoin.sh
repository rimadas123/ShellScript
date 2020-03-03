#!/bin/bash

#generate random number (0 and 1)
cal=$(( RANDOM%2 ))

#checks condition whether it is 1 or 0 and display accordingly
if [ $cal -eq 1 ] 
then
	echo It is a head
else
	echo It is a tail
fi
