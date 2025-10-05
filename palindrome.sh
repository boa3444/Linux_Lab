#!/bin/bash

if [[ $# -ne 1 ]];then
	echo "One input only"
	exit 1
fi

if ! [[ $1 =~ ^-?[0-9]+$ ]];then
	echo "INput a valid integer only"
	exit 1
fi

digit=0
numb=$1
t=$numb
while [[ $numb -ne 0 ]]
do
	numb=$((numb/10))
	$((digit++))
done
rev=0
for ((i=0;i<$digit;i++));do
	l_dig=$((t%10))
	rev=$(((rev*10 )+ l_dig))
	t=$((t/10))
done

if [[ $1 -eq $rev ]];then
	echo "Palindrome"
else
	echo "NOt a palindrome"
fi
