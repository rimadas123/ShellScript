#!/bin/bash

first=1000
second=1000
third=100
fourth=100
for (( i=0; i<10; i++ ))
do
	randomNumber=$(( RANDOM%900 + 99 ))
 	arr[i]=$randomNumber
	if [[ arr[i] -lt $first ]]
	then
		second=$first
		first=${arr[$i]}
	elif [[ arr[i] -lt $second && arr[i] -ne $first ]]
	then
		second=${arr[$i]}
	fi

	if [[ arr[i] -gt $third ]]
	then
		fourth=$third
		third=${arr[$i]}
	elif [[ arr[i] -gt $fourth && arr[i] -ne $third ]]
	then
		fourth=${arr[$i]}
	fi
done

echo "${arr[@]}"
echo "second smallest array is" $second
echo "second largest array is" $fourth
