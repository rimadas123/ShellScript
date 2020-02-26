#!/bin/bash

echo enter 5 two digit numbers
echo enter 1st number
read num1
echo enter 2nd number
read num2
echo enter 3rd number
read num3
echo enter 4th number
read num4
echo enter 5th number
read num5

sum=$(( num1 + num2 + num3 + num4 + num5))
echo $sum
avg=$(( $sum / 5 ))
echo $avg
