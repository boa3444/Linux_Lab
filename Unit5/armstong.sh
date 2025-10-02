#!/bin/bash

if [ $# -ne 1 ];then
	echo "Input 1 number only"
	exit 1
fi

num=$1
remainder=0
cube=0
sum=0
digit=0
org_num=$num
if ! [[ $num =~ ^[0-9]+$ ]]; then
	echo "Input numbers only"
	exit 1
fi



while [ $num -ne 0 ];
do
	digit=$((digit+1))
	num=$((num/10))
	
done 


while [ $org_num -ne 0 ];do
	remainder=$((org_num%10))
	cube=$((remainder**3))
	sum=$((sum+cube))
	org_num=$((org_num/10))

done

if [ $sum -eq $1 ]; then
	echo "ANGSTROM"

else 	
	echo "NOT AN ANGSTROM"
	
fi

