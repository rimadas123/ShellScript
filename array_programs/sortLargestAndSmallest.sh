#!/bin/bash

#$ declare -a arr

for (( i=0; i<10; i++ ))
do 
   randomNumber=$(( RANDOM%900 + 99 ))
   arr[i]=$randomNumber
done

for (( i=0; i<10; i++ ))
do
	for (( j=$i+1; j<10; j++ ))
	do
		if [[ ${arr[$i]} -gt ${arr[$j]} ]]
		then
			temp=${arr[$i]}
			arr[i]=${arr[$j]}
			arr[j]=$temp
		fi 
	done
done

echo "${arr[@]}"
echo "second largest array ${arr[8]}"
echo "second smallest array ${arr[1]}"
