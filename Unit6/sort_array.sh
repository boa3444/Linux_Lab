#!/bin/bash

array=(${@:2})
elements=$#
run=$((elements - 2))
rerun=$run
echo "${array[*]}"
for ((i=0;i<=$run;i++))
do
	if ! [[ ${array[i]} =~ ^-?[0-9]+$ ]];then
		echo "Int only ${array[$i]}"
		exit 1
	fi
done

asc(){
	while [[ $run -ne 0 ]];
	do
		for ((i=0;i<run;i++))
		do
			if [[ ${array[i]} -gt ${array[$((i+1))]} ]];then
				t=${array[i]}
				array[$i]=${array[$((i+1))]}
				array[$((i+1))]=$t
			fi
		done
		run=$((run-1))
	done
	echo "${array[*]}"
}

desc(){
	while [[ $rerun -ne 0 ]];
	do 
		for ((i=0;i<rerun;i++))
		do
			if [[ ${array[i]} -lt ${array[$((i+1))]} ]];then
				t=${array[i]}
				array[$i]=${array[$((i+1))]}
				array[$((i+1))]=$t
			fi
		done
		rerun=$((rerun-1))
	done
	echo "${array[*]}"
}

if [[ $1 == "ascend" ]];then
	asc
elif [[ $1 == "descend" ]];then
	desc
else
	echo "Type valid operation"
fi
