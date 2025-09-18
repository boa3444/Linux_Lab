#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "Input one filename at a time"
	exit 1 
fi



filename=$1

if ! [[ -e $filename ]]; then
	echo "SORRY CANT FIND THIS FILE RN"
	exit 1 
fi
lines=$(wc -l < $filename)
words=$(wc -w < $filename)
characters=$(wc -c < $filename)

echo "Lines: $lines
Words: $words
Characters: $characters"
