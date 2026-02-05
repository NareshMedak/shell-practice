#!/bin/bash

echo "Enter your PIN number:"
read -s PIN
echo
# create a masked version of the PIN (same length, asterisks)
masked=$(printf '%*s' "${#PIN}" '' | tr ' ' '*')
echo "Your number is: $masked"

 
