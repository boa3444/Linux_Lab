#!/bin/bash

arr=($@)
for (( i= 0 ; i< $# ;i++); do
	echo "${arr[$i]}"

done
