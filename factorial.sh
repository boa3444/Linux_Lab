#!/bin/bash


f(){
	t=$1
	r=1
	for ((i=0;i<$1;i++));
	do
		r=$((r*t))
		t=$((t-1))
	done
	echo "$r"
}

f $1
