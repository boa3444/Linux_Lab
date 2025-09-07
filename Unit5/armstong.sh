#!/bin/bash

if [ $# -ne 1 ];
	then echo "Please input only one input."
	exit 1
fi



num="$1"
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
	echo "Your input did not included only integers."
	exit 1
fi


tumbler="$num"
length=0
while [ "$tumbler" -gt 0 ];
	do tumbler=$((tumbler/10))
	length=$((length+1))
done

tumbler="$num"
sum=0
	
while [ "$tumbler" -gt 0 ];
	do l_digit=$((tumbler%10))
	temp_tumbler="$l_digit" 


	for ((i= 0; i < (length-1) ; i++)) ;
		do l_digit=$((l_digit * temp_tumbler))
		
	done	
	sum=$((sum + l_digit))
	tumbler=$((tumbler/10))
	
done


if [ "$sum" -eq "$num" ]; then
	echo "Its an Armstrong number"
	
else
	echo "Its not an Armstrong number"
	
fi







