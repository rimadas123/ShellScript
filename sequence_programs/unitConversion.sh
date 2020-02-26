
#!/bin/bash

# a)1ft=12 in then 42 in=? ft

oneFeet=12
calInches=$(( 42 / $oneFeet ))
echo $calInches

# b) rectangular plot of 60feet X 40 feet

#feetConversionToMeter=echo "0.3048" | bc
sixtyFeetToMeter=`echo "60 * 0.3048" | bc -l` 
fourtyFeetToMeter=`echo "40 * 0.3048" | bc -l` 

rectPlot=`echo "$sixtyFeetToMeter * $fourtyFeetToMeter" | bc -l`
echo $rectPlot 

# c) calculate area of 25 such plot in acres

area=`echo "$rectPlot * 25" | bc -l`
echo $area

