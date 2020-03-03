#!/bin/bash -x 

read $1 $2

day=$1
month=$2

if [[ $day -eq 20 && $month -eq 3 || $month -eq 4 || $month -eq 5 || $month -eq 6 ]]
then
    echo "true"
else
    echo "false"
fi

