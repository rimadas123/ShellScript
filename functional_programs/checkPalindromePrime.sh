#!/bin/bash

#function to check Prime numbers
function checkPrime() {
	for (( i=2; i<$number; i++ ))
	do
		if [[ $(( $number % $i )) == 0 ]]
		then
			return 0
		fi
	done
	return 1
}

#function to check palindrome numbers
function checkPalindrome() {
	reverse=0
	old=$number
	while [ $old -ne 0 ]
	do
		remainder=$(( $old % 10 ))
		reverse=$(( ($reverse*10) + $remainder ))
		old=$(( $old / 10 ))
	done

	return $reverse
}

#user input
echo -n "Enter a number"
read number

#calling the function
prime="$( checkPrime )"
prime=$?
echo "prime is $prime"

#to check if value is equal to 1
	if [ $prime -eq 1 ]
	then
		# to check palindrome of that value
		reverse="$( checkPalindrome )"
		reverse=$?
		echo $reverse
		number=$reverse
		checkPrime
		primePalindrome=$?
		echo $primePalindrome

		if [ $primePalindrome -eq 1 ]
		then
			echo "number is prime and its palindrome is also prime"
		else
			echo "number is prime but its palindrome is not prime"
		fi
	else
		echo "number is not a prime"
	fi
