#!/bin/bash

#practice 3 with case now

if [[ $# -lt 3 ]];then
	echo "3 inputs are allowed"
	exit 1 
fi

if ! [[ $1 =~ ^-?[0-9]+$ && $2 =~ ^-?[0-9]+$ ]];then
	echo "Input valid integers"
	exit 1
fi

case $3 in
	/) r=$(($1/$2))
	echo "$r"

	;;
	
	[*]) r=$(($1*$2)) #[*] == "*"
	echo "$r"
	
	;;
	
	+) r=$(($1+$2))
	echo "$r"
	
	;;
	
	-) r=$(($1-$2))
	echo "$r"
	
	;;

esac
