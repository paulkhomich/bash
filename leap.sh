#!/bin/bash

year=${1:-2020}

if [[ $(( $year % 400 )) -eq 0 ]]; then
    echo "$year is a leap year!"
    exit 0
elif [[ $(( $year % 100 )) -ne 0 ]]; then
    if [[ $(( $year % 4 )) -eq 0 ]]; then
        echo "$year is a leap year!"
	exit 0
    fi
fi
 
exit 1
