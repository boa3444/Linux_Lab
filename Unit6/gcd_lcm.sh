#!/bin/bash

if [[ $# -ne 2 ]];then
	echo "Input two numbers please."
fi


if ! [[ $1 =~ ^[0-9]+$ ||  $2 =~ ^[0-9]+$ ]];then
	echo "Input valid integers"
	exit 1
fi

s_dig=$2
f_dig=$1
t1=$f_dig
t2=$s_dig
t=0

#logic
while [ $s_dig -ne 0 ]
do
	t=$s_dig
	s_dig=$((f_dig % s_dig))
	f_dig=$t
done

echo "GCD: $f_dig"

lcm=$(((t1 * t2)/ f_dig))

echo "LCM: $lcm"
