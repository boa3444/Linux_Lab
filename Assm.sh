#!/bin/bash

ele1=0
read -p "Type the number of elements you want in your array 1:" ele1

arr1=()

for (( i= 0 ; i < $ele1 ; i++));
do
	read -p "Type the $((i+1)) element: " numb1
	arr1+=("$numb1")
done


if ! [[ $ele1 -gt 0 ]];
then
	echo "Type atleast one number of element for the array\n"
fi

ele2=0
read -p "Type the number of elements you want in your array 2:" ele2


if ! [[ "$ele2" -gt 0 ]];
then
	echo "Type atleast one number of element for the array"
fi
arr2=()

for (( i=0 ; i<ele2 ; i++));
do
	read -p "Type the $((i+1)) element: " numb2
	arr2+=("$numb2")
done

#echo "Pal arr: ${arr2[*]}"
pal()
{
	local num="$1"
	local t="$1"
	local rev=0
	local l_dig=0
	while [[ "$num" -gt 0 ]] ;
	do
		l_dig=$((num%10))
		rev=$(((rev * 10) + l_dig))
		num=$((num/10))
	done

	if [[ "$rev" -eq "$t" ]];
	then
		return 0
	else
		return 1
	fi
}

sum_dig()
{
	local num="$1"
	local sum=0
	while [[ "$num" -gt 0 ]];
	do
		l_dig=$((num%10))
		sum=$((sum+l_dig))
		num=$((num/10))
	done
	return "$sum"
}

prime()
{
	local num="$1"
	if [[ "$num" -le 1 ]] ;
	then
		return 1
	fi
	if [[ "$num" -eq 2 ]];
	then
		return 0
	fi
	for (( i=2 ; i<num ; i++));
	do
		answer=$((num%i))
#		echo "$answer"
		if [[ "$answer" -eq 0 ]];
		then
			return 1
		fi
	done
	return 0
}


pal_arr=()
prime_arr=()
for (( i=0 ; i<ele2; i++));
do
	pal "${arr1[i]}"
	if [[ "$?" -eq 0 ]];
	then
		to_store="${arr1[i]}"
		sum_dig "$to_store"
		pal_arr+=("$?")
	fi
done

echo "Pal array:${pal_arr[*]}"

##echo "${arr2[@]}"
for value in "${arr2[@]}";
do
#	echo "Checking : $value"
	if prime "$value";
	then
#		echo "prime $value"
		prime_arr+=("$value")
	fi
done

echo "Prime array: ${prime_arr[@]}"
#
#for (( i=0 ; i < ele2; i++));
#do
#	echo "${arr2[i]}"
#done

final_arr=()

for (( i=0 ; i<"${#pal_arr[@]}";i++ ));
do
	num1="${pal_arr[i]}"
	for (( j= 0 ; j < "${#prime_arr[@]}"; j++));
	do
		num2="${prime_arr[j]}"
		final_arr+=("$((num1*num2))")
	done

done

echo "Final array: ${final_arr[@]}"
