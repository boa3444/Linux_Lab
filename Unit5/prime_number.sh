#!/bin/bash


if [ $# -ne 1 ];
	then echo "Please input only one input."
	exit 1
fi



num="$1"
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
	echo "Your input should only integers."
	exit 1
fi


is_prime=0


i=2

if [ $num -eq 2 ]; then
	echo "Its a prime number"
	exit 1
	
fi
until [ $i -eq $num ]
	do 
	remainder=$((num%i))
	
	if [ "$remainder" -eq 0 ]; then
		echo "Its not a prime number"
		exit 1
	else
		echo "Its a prime number"
		exit 1
		
	fi
	((i++))
	

done




