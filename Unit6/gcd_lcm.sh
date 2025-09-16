#!/bin/bash


lcm=0
num1=$1
num2=$2
temp=0


if [[ $# -ne 2 ]];then
	echo "ENTER ATLEAST AND AT MAX ONE INPUT AT A TIME"
	exit 1
fi

if ! [[ $num1 =~ ^[0-9]+$ && $num2 =~ ^[0-9]+$  ]];
	then echo "Input only numbers"
	exit 1;
fi

while [ $num2 -ne 0 ];
	do temp=$num2
	num2=$((num1%num2))
	num1=$temp
	
done

lcm=$(($1 * $2/ num1))
echo "GCD:$num1
LCM:$lcm"
