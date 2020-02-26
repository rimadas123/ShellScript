#!/bin/bash

#constants value
min=1000
max=100


for i in {1..5};
do
  val=$(( RANDOM%1000 + 100 ))
	echo $val
	if [ $max -le $val ]
	then
	    max=$val
	elif [ $min -ge $val ]
	then
	   min=$val 
	fi
done
echo "maximum number: " $max
echo "minimum number: " $min

