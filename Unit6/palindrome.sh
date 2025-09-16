#!/bin/bash

remainder=0
input="$1"
org_input="$input"
if [[ $# -ne 1 ]];then
	echo "ENTER ATLEAST AND AT MAX ONE INPUT AT A TIME"
	exit 1
fi

if ! [[ $input =~ ^[0-9]+$  ]];
	then echo "Input only numbers"
	exit 1;
fi


while [ "$input" -gt 0 ];
	do remainder=$((input%10))
	sum_of=$(((sum_of * 10) + remainder))
	input=$((input/10))
	
done

if [ $sum_of -eq $org_input ];then
echo "palindrome"

else
echo "no it is not palindrome"
fi
	
	
