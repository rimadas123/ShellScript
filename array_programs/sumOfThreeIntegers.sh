#!/bin/bash

arr_num=( 0 -1 2 -3 1 )
echo "${arr_num[@]}"

for (( i=0; i<${#arr_num[@]}-2; i++ ))
do
	for (( j=$i+1; j<${#arr_num[@]}-1; j++ ))
	do
		for(( k=$j+1; k<${#arr_num[@]}; k++ ))
		do
			if [[ $(( $(( ${arr_num[i]}+${arr_num[j]} ))+${arr_num[k]} )) == 0 ]]
			then
				echo "sum of integer adds upto zero is ${arr_num[i]} ${arr_num[j]} ${arr_num[k]}"
			fi
		done
	done
done
