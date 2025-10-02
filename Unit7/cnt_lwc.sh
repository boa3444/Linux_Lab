#!/bin/bash

l=$(wc -l < $1)
w=$(wc -w < $1)
c=$(wc -c < $1)
ws=$(tr -cd ' \t' < $1 | wc -c) ## white spaces
##lines words and characters
echo "$ws"
