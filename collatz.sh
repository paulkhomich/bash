#!/bin/bash

n=${1:-0}

if [[ n -lt 1 ]]; then
    echo "usage: ${0:2} [num > 0]"
    exit 1
fi

c=0
while [[ n -ne 1 ]]; do
    if [[ $(( n  % 2 )) -eq 0 ]]; then
	n=$(( n / 2 ))
    else 
	n=$(( 3 * n + 1 ))
    fi
    c=$(( c + 1 ))
done

echo $c

