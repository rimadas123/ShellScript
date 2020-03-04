#!/bin/bash 

number=$1

powerOfTwo=1
start=1

while [ $start -le $number ]
do
	powerOfTwo=$(( 2 * $powerOfTwo ))
	echo $powerOfTwo
	if [ $powerOfTwo -ge 256 ]
	then
		break
	fi
	(( start++ ))
done

