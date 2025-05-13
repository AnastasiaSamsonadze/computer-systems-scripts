#!/bin/bash

if [ "$#" -lt 1 ]; then
	    echo "Usage: $0 <num1> <num2> <num3> ..."
	        echo "Provide at least one number as an argument."
		    exit 1
fi

	    reference=$1
	    skip_first=1

for arg in "$@"; do
if [ $skip_first -eq 1 ]; then
skip_first=0
continue
fi
if [ "$arg" -gt "$reference" ]; then
echo "$arg"
fi
done
