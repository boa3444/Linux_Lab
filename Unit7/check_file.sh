#!/bin/bash

#practice 5

if [[ $# -ne 1 ]];then
	echo "One filename at a time"
	exit 1
fi

if [[ -e $1 ]];then
	echo "Found at $(realpath $1 )"
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
	read -p "Wanna create one isntead? " ans
	if [[ $ans =~ ^([Yy]|[Yy][Ee][Ss]) ]];then
		touch $1
		read -p "Wanna add anything to its content?" ans
		if [[ $ans =~ ([Yy]|[Yy][Ee][Ss]) ]];then
			cat > $1
		else
			exit 1
		fi

	else
		echo "Ok not creating one huh"
	fi
fi
