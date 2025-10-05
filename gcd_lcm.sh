#!/bin/bash

#practice 4

if [[ $# -lt 2 ]];then
	echo "INput two inputs "
	exit 1
fi

if ! [[ $1 =~ ^-?[0-9]+$ && $2 =~ ^-?[0-9]+$ ]];then
	echo "Input a valid integer "
	exit 1
fi

numb1=$1
numb2=$2

while [[ $numb2 -gt 0 ]];
do
	t=$numb2
	numb2=$((numb1%numb2)) 
	numb1=$t
done

echo "GCD: $numb1"
lcm=$((($1*$2)/numb1))
echo "LCM:$lcm"
