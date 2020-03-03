#!/bin/bash -x

#user inputs
echo Enter 1st number
read number1
echo Enter 2nd number
read number2
echo Enter 3rd number
read number3

# 1) compute arithematic operation (a + b * c)
firstOperation=`echo "scale=2;$number1 + $number2 * $number3" | bc -l`

# 2) compute arithematic operation (a % b + c)
secondOperation=`echo "scale=2;$number1 % $number2 + $number3" | bc -l` 

# 3) compute arithematic operation (c + a / c)
thirdOperation=`echo "scale=2;$number3 + $number1 / $number2" | bc -l`

# 4) compute arithematic operation (a * b + c)
fourthOperation=`echo "scale=2;$number1 * $number2 + $number3" | bc -l`

#find maximum number 
max=$firstOperation
if (( `echo "$max < $secondOperation" | bc -l` ))
then
   max=$secondOperation
fi

if (( `echo "$max < $thirdOperation" | bc -l` ))
then
   max=$thirdOperation
fi

if (( `echo "$max < $fourthOperation" | bc -l` ))
then
   max=$fourthOperation
fi

echo "max value is: " $max

#find minimum number
min=$firstOperation
if(( `echo "$min > $secondOperation" | bc -l` ))
then
   min=$secondOperation
fi

if(( `echo "$min > $thirdOperation" | bc -l` ))
then
   min=$thirdOperation
fi

if(( `echo "$min > $fourthOperation" | bc -l` ))
then
   min=$fourthOperation
fi

echo "min value is: " $min


