
#!/bin/bash

echo -n "Enter a number print a table"
read number

powerOfTwo=1

for (( i=0; i<$number; i++ ))
do
	powerOfTwo=$(( 2 * $powerOfTwo ))
	echo $powerOfTwo
done
