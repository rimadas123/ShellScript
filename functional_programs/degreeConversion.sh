#!/bin/bash

#taking input from user
echo "Enter a temperature between 0-100"
read degree

echo "to convert celsius to farenheit enter 1 or to convert farenheit to celsius enter 2"
read choice

function celToFaren () {
	degF=$( echo "scale=2;($degree * (9/5)) + 32" |bc )
	echo $degF
}

function farenToCel () {
	degC=$( echo "scale=2;($degree-32) * (5/9)" | bc )
	echo $degC
}

case $choice in
		1)
		celToFaren
		;;
		2)
		farenToCel
		;;
		*)
		echo "wrong input"
		;;
esac
