#!/bin/bash


read input

digit=0
sum=0
l_digit=0
i=0
temp_digit="$input"

while [ $temp_digit -ne 0 ];
	do temp_digit=$(($temp_digit/10))
	((digit++)) 
	
done



while [ $i -le $digit ]
	do 
	l_digit=$((input%10))
	
	sum=$((sum+l_digit))
	input=$((input/10))
	i=$((i + 1))
	l_digit=0
	
	
done

echo "Sum of all digits: $sum"
