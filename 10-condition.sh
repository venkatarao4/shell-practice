#!/bin/bash 
NUMBER=$1
if [$NUMBER -lt 10 ]; then
    echo "given number $NUMBER is less than 10"
elif [$NUMBER -eq 10]; then
    echo "given number is equal to 10" 
else
    echo " given number $NUMBER is greater than  10"
fi

