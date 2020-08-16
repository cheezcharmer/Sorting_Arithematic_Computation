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

UC5=$(($a%$b+$c))
echo "a % b + c = "$UC5

declare -A compute
compute[2]=$UC2
compute[3]=$UC3
compute[4]=`echo $UC4`
compute[5]=$UC5

for (( i=2; i<=5; i++ ))
do
	arr[$i]=${compute[$i]}
done

