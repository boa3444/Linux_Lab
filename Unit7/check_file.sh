#!/bin/bash


if [[ $# -gt  2 ]];then
	echo "Input atleast 1 and at max 2 inputs"
	exit 1
fi

if [ -e $1 ] ;then
	echo "Found it at $(realpath $1)"
	echo "Its content: "
	cat $1
	read -p " Could not find the second file. wanna created one?" ans
	if [[ $ans =~  ^([Yy]|[yY][eE][sS]) ]];then
		touch $2
		read -p "Wanna add something to its content?" ans
		if [[ $ans =~ ^([Yy]|[Yy][Ee][Ss]) ]];then
			cat >> $2
		else
			exit 1
		fi
	else
		exit 1
	fi


elif [ -e $2 ];then
	echo "Found only second file"
	echo "Found it at $(realpath $2)"
	echo "Its content: "
	cat $1
	read -p "Wanna create a new file named $1? "
	if [[ $ans =~  ^([Yy]|[yY][eE][sS]) ]];then
		touch $1
		read -p "Wanna add something to its content?" ans
		if [[ $ans =~ ^([Yy]|[Yy][Ee][Ss]) ]];then
			cat >> $1
		else
			exit 1
		fi
	else
		exit 1
	fi

fi
