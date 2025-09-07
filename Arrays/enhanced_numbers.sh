#!/bin/bash

start=$1
end=$2
step=$3

# Validate input count
if [ $# -ne 3 ]; then
	echo "You must input exactly 3 arguments."
	exit 1
fi

if ! [[ $start =~ ^[0-9]+$  &&  $end =~ ^[0-9]+$ ]]; then
	echo "Your range of numbers must only be an integer."
	exit 1
fi
	
if ! [[ $step =~ ^[1-9]+$ ]]; then
	echo "Your step value should be a non-zero, positive integer only."
	exit 1
fi

if [ $start -le $end ]; then
	until [ "$start" -gt "$end" ]; do
	    echo "Iteration: $start"
	    start=$((start + step))
	done


else
	until [ "$start" -le "$end" ]; do
	    echo "Iteration: $start"
	    start=$((start - step))
	done	
fi
