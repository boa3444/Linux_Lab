#!/bin/bash

if [[ $# -ne 1 ]];then
	echo "Input only one file's or directory's name at a time"
	exit 1 
fi

filename=$1

if [[ -e $filename ]] ; then
	echo "File exists"
	echo "Its absolute path: $(realpath $filename)"
	echo "Its content:"
	cat $filename
	read -p "You wanna add anything to its content? (Y/N): " input2
	if [[ $input2 == [Yy]* ]] ; then
		cat >> $filename
	else
		exit 1 
	fi
	
else 
	read -p "Cant find the file/dir you mentioned. You wanna create one? (Y/N): " input
	if [[ $input == [yY]* ]]; then
		touch "$filename"
		echo "Your file: '$filename' was created at $(dirname $(realpath "$filename")) in the time"
		stat -c %y "$filename"
		read -p "You wanna add anything to its content? (Y/N): " input2
		if [[ $input2 == [Yy]* ]] ; then
			cat >> $filename
		else
			echo "OK!"
			exit 1 
		fi
	else
		echo "OKay Not gonna create one for youhhhh"
			
	fi
fi

#echo "$(dirname $filename)"
