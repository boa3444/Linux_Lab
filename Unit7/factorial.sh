#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Input one number at a time please!."
	exit 1
fi

if ! [[ $1 =~ ^[0-9]+$ ]]; then
	echo "Please input positive integer numbers only"
	exit 1
fi

filename=$1
factorial(){
	number="${@:1}"
	vessel=$number
	answer=1
	#echo "$number"
	
	for ((i=0 ; i< $vessel; i++));
	do
		answer=$((answer * number))
		number=$((number -1))
	done

	echo "$answer"
	
}

factorial $1


