#!/bin/bash

numb1=$1
numb2=$2
operator=$3
result=0
calc(){
	numb1=$1
	numb2=$2 #locals
	operator=$3
	if [[ $numb2 -eq 0  &&  $operator == / ]];then
		echo "Invalid input for division"
		exit 1
	fi
	if [[ $operator == / ]];then
		result=$((numb1/numb2))
		echo "$result"
		exit 1
	fi
	if [[ $operator == + ]];then
		result=$((numb1+numb2))
		echo "$result"
		exit 1
	fi
	if [[ $operator == * ]];then
		result=$((numb1*numb2))
		echo "$result"
		exit 1
	fi
	if [[ $operator == - ]];then
		result=$((numb1-numb2))
		echo "$result"
		exit 1
	fi

}

calc $1 $2 $3
