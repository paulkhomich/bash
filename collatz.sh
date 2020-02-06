#!/bin/bash

n=${1:-0}
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

