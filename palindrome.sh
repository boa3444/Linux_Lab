#!/bin/bash


##practice 2

if [[ $# -ne 1 ]];then
	echo "One input allowed at a time"
	exit 1
fi

if ! [[ $1 =~ ^-?[0-9]+$ ]];then
	echo "Only numbers allowed"
fi

numb=$1
num=$numb
og=$numb
digit=0
while [[ $numb -ne 0 ]];
do
	numb=$((numb/10))
	((digit++))
done
rev=0
for ((i=0;i<$digit;i++));
do
	l_dig=$((num%10))
	rev=$(((rev* 10)+ l_dig))
	((num/=10))
done


if [[ $rev == $og ]];then
	echo "Palindrome"

else
	echo "Nahhhh"
fi
