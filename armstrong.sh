#!/bin/bash

n=$1
l=${#n}

o=0
for (( i=0; i < $l; i++ )); do
    o=$(( $o + (${n:i:1} ** l) ))
done

if [[ $o -eq $n ]]; then
    echo "$n is Armstrong number!"
else
    echo "$n isn't Armstrong"
fi


