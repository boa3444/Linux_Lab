#!/bin/bash
echo(){
	builtin echo "This is an output of echo command used in echo function"
	builtin echo $1
}

echo "This is an output of echo function"
