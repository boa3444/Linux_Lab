#!/bin/bash
arr=(${@:2})
elements=$#
run=$((elements-2))
asc(){
	while [[ $run -gt 0 ]];
	do
		for ((i=0;i<$run;i++));
		do
			if [[ ${arr[i]} -gt ${arr[$((i+1))]} ]];then
				t=${arr[i]}
				arr[$i]=${arr[$((i+1))]}
				arr[$((i+1))]=$t
			fi
		done
		run=$((run-1))
	done
	echo "${arr[*]}"
}

if [[ $1 == "ascend" ]];then
	asc
fi
