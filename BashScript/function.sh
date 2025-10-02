#!/bin/bash

myfun() {
	return $(($1+$2))
}

myfun $1 $2

echo "Sum:$?"
