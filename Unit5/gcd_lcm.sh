#!/bin/bash

num1="$1"
num2="$2"
result=0
smaller=0
gcd() {


	if [ $num1 -gt $num2 ]; then
		result="$num1"
		smaller="$num2"
	else
		result="$num2"
		smaller="$num1"
	fi
	
	while [ "$result" -gt 0 ]; 
	do
	
		result=$((result-smaller))
	done

	result=$((result+smaller))
	echo "GCD: $result"
	
	
	}
	
	
gcd 13 12

