#!/bin/bash

n=${1:-0}
sum=0

add=0
for (( i=0; i < $n; i++ )); do
    add=$(( 2 ** $i ))
    sum=$(( $sum + $add ))
done

echo "Value on ${n}th square: ${add}, sum is: $sum"
