#!/bin/bash

firstRandNum=$(( RANDOM%6 ))
secondRandNum=$(( RANDOM%6 ))

additionNums=$(( $firstRandNum + $secondRandNum ))
echo $additionNums

