#!/bin/bash -x

read -p "Enter First Number(a) " a
read -p "Enter Second Number(b) " b
read -p "Enter Third Number(c) " c

UC2=$(($a+$b*$c))
echo "a + b x c = "$UC2

UC3=$(($a*$b+$c))
echo "a * b + c = "$UC3

UC4=`echo $c+$a/$b | bc -l`
echo "c + a / b = "$UC4
