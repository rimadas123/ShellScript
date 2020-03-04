#!/bin/bash -x

#constants
STAKE=100
GOAL=200
BROKE=0

#user input
echo -n "Enter number of trials"
read trials

#variables
wins=0
bets=0
loss=0

for (( i=0; i<$trials; i++ ))
do
	cash=$STAKE
	while [[ $cash -gt $BROKE && $cash -lt $GOAL ]]
	do
		(( bets++ ))
		if [[ $(( RANDOM%2 )) -eq 1 ]]
		then
			(( cash++ ))
		else
			(( cash-- ))
		fi
done
	if [[ $cash -eq $GOAL ]]
	then
		(( wins++ ))
	else
		(( loss++ ))
	fi
done

echo "number of times u won: " $wins
echo "number of times u lost: " $loss
