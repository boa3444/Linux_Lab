#!/bin/bash

input=""
until [ $input = "exit" ]
do
  read -p "Enter a word (type 'stop' to quit): " input
  echo "You entered: $input"
done
