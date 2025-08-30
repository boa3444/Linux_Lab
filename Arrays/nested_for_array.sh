#!/bin/bash

color=('pink' 'blue')
shirt=('satin' 'tshirt')

for name in "${color[@]}"
do
  for subject in "${shirt[@]}"
  do
    echo "$shirt is $color in color."
  done
done
