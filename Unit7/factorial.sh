#!/bin/bash

if [ $# -ne 1 ];then
	echo "Input one inp at a time"
	exit 1
fi

if ! [[ $1 =~ ^[0-9]+$ ]];then
	echo "Input a pos integer only"
	exit 1
fi

f(){
	numb=$1
	ans=1
	tumb=$numb
	for (( i= 0 ; i< $tumb;i++));do
		ans=$((ans * numb))
		numb=$((numb-1))
	done
	echo "$ans"
}

f $1
