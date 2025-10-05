#!/bin/bash

#practice 4

if [[ $# -ne 1 ]];then
	echo "One filename at a time"
	exit 1
fi

if [[ -e $1 ]];then
	echo "Found at $(realpath $!)"
	echo "Content:"
	cat $1
	read -p "Wanna add anything to its content?" ans
	if [[ $ans =~ ^([Yy]|[Yy][Ee][Ss]) ]];then
		cat >> $1
	else
		exit 1
	fi

else
	echo "Not found"
	read -p "Wanna create one instead?" ans
	if [[ $ans =~ ([Yy]|[Yy][Ee][Ss]) ]];then
		echo "CReated"
		touch $1
		read -p "Wanna add any content?" ans
		if [[ $ans =~ ([Yy]|[Yy][Ee][Ss]) ]];then
			cat > $1
		else
			exit 1
		fi
	else
		echo "Ok not making one for you"
		exit 1
	fi
fi
