#!/bin/bash -x

#user inputs
echo -n "Enter any unit in feet inch meter"
read unit

echo -n "enter a length to do unit conversion"
read num

case $unit in
	feet)
	feetToInch=`echo "$num*12" | bc -l`
	feetToMeter=`echo "$num*0.3048" | bc -l`
	echo $feetToMeter
	echo $feetToInch
	;;
	inch)
	inchToFeet=`echo "$num*0.0833333" | bc -l`
	echo $inchToFeet
	;;
	meter)
	meterToFeet=`echo "$num*3.28084" | bc -l`
	echo $meterToFeet
	;;
	*)
	echo "cannot convert:wrong input"
	;;
esac


