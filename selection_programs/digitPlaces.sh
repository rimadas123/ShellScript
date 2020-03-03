#!/bin/bash

#user inputs
echo -n "Enter a number"
read num

#check the unit,tens,hundredth and thousand places
if [ $num -eq 1 ]
then
   echo "the number is in unit place"
elif [ $num -eq 10 ]
then
   echo "the number is in ten place"
elif [ $num -eq 100 ]
then
   echo "the number is in hundredth place"
elif [ $num -eq 1000 ]
then
   echo "the number is in thousandth place"
else
   echo "it is a whole number"
fi
