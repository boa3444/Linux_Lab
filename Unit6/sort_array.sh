#!/bin/bash

arr=(${@:2})
vessel=0
swap=0
elements=$#
limit=$((elements-2))
#echo "$limit"

for (( index = 0 ; index <= $limit ; index++)); do
	if ! [[ ${arr[$index]} =~ ^-?[0-9]+$ ]];then
		echo "Please only include valid numbers"
		exit 1;
	fi
	
done

echo "Our original array: (${arr[*]})"
asc(){
	while [ $limit -gt 0 ]; do
		for ((i = 0 ; i < $limit ; i++));
		do
			if [[ ${arr[i]} -gt ${arr[i+1]} ]]; then
				vessel=${arr[i]}
				arr[$i]=${arr[i+1]}
				arr[$((i+1))]="$vessel"
				
			fi

			#swap=$((swap+1))
			if [[ $i -eq $((limit-1)) ]];then
				limit=$((limit - 1))
				break		
			fi
		done
	done
	echo "Ascended version:(${arr[*]})"
}

desc(){
	while [ $limit -gt 0 ]; do
		for ((i = 0 ; i < $limit ; i++));
		do
			if [[ ${arr[i]} -lt ${arr[i+1]} ]]; then
				vessel=${arr[i]}
				arr[$i]=${arr[i+1]}
				arr[$((i+1))]="$vessel"
				
			fi

			#swap=$((swap+1))
			if [[ $i -eq $((limit-1)) ]];then
				limit=$((limit - 1))
				break		
			fi
		done
	done
	echo "Desecended version:(${arr[*]})"
}
#asc ${arr[*]}
#desc ${arr[*]}
#inforte

if [ "$1" == "asc" ];then
	asc ${arr[*]}

elif [ "$1" == "desc" ];then
	desc ${arr[*]}

fi 
