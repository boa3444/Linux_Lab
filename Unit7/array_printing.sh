#!/bin/bash

arr=($@)

echo "Original array: (${arr[@]})"
for ((i=0; i< $#; i++)); do
	echo "${arr[$i]}"
done
