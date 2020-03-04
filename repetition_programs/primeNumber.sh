#!/bin/bash -x

#user input
echo -n "Enter a number: "
read number

for (( i=2; i<$number; i++ ))
do
   if [[ $(( $number % $i )) -eq 0 ]]
   then
       echo "not a prime number"
       break
   fi
done

if [[ $i -eq $number ]]
then
   echo "prime number"
fi

