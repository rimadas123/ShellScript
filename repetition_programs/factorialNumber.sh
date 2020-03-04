
#!/bin/bash -x

#user input
echo -n "Enter a number"
read number

#variables
fact=1

for (( i=2; i<=$number; i++ ))
do
	fact=$(( $fact * $i ))
done

echo "Factorial of $number is $fact"
