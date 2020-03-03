#!/bin/bash

#user input
echo "Enter 1st number"
read number1
echo "Enter 2nd number"
read number2

#to check palindrome
function checkPalindrome() {
	reverse=0
	storeNumber=$1
	while [[ $storeNumber -ne 0 ]]
	do
		remainder=$(( $storeNumber % 10 ))
		reverse=$(( ($reverse * 10) + $remainder ))
		storeNumber=$(( $storeNumber / 10 ))
	done
	if [[ $1 -eq $reverse ]]
	then
		return 1
	else
		return 0
	fi 
}

number1="$( checkPalindrome $number1 )"
number1=$?

if [[ $number1 -eq 1 ]]
then
	echo $number1 number is palindrome
else
	echo $number1 number is not a palindrome
fi

number2="$( checkPalindrome $number2 )"
number2=$?

if [[ $number2 -eq 1 ]]
then
	echo $number2 number is palindrome
else
	echo $number2 number is not a palindrome
fi
