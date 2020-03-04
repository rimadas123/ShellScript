
#!/bin/bash

echo -n "Enter a number"
read number

sum=`echo "0.0" | bc -l`

for (( i=1; i<=$number; i++ ))
do
	sum=`echo "$sum + 1.0 / $i" | bc -l`
done

echo $sum
