#!/bin/bash -x

#user input
echo -n "Enter the number upto which you want prime numbers: "
read range

for (( i=2; i<=$range; i++ ))
do
 count=0
 for (( j=1; j<$i; j++ ))
 do
   if [[ $(( $i % $j )) -eq 0 ]]
   then
      (( count++ ))
   fi
 done
   if [[ $count -eq 2 ]]
   then
      echo $i "is a prime number"
   fi
done


