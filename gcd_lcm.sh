#!/bin/bash

gcd(){
	numb1=$1
	numb2=$2
	lcm=$((numb1*numb2))
	while [[ $numb2 -ne 0 ]];
	do
		t=$numb2
		numb2=$((numb1 % numb2))
		numb1=$t
	done
	echo "GCD: $numb1"
	lcm=$((lcm/numb1))
	echo "LCM: $lcm"
}
gcd $1 $2
