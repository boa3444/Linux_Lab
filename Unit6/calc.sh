#!/bin/bash


result=0
calc() {
	num1=$1
	num2=$2
	num3=$3
	if [[ $num3 == / ]];then
		result=$((num1/num2))
		echo $result
		exit 1
	
	elif [[ $num3 == + ]];then
		result=$((num1+num2))
		echo $result
		exit 1
	
	elif [[ $num3 == - ]];then
		result=$((num1-num2))
		echo $result
		exit 1
	
	elif [[ "$num3" == * ]];then
		result=$((num1*num2))
		echo $result
		exit 1
	fi
	}

calc $1 $2 $3
		

