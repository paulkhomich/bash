#!/bin/bash

n=${1:-0}
diff=0

for (( i=1; i<=$n; i++ )); do
    for (( j=$(( $i + 1 )); j<=$n; j++ )); do
	diff=$(( $diff + $i * $j ))
    done
done

echo $(( $diff * 2 ))

