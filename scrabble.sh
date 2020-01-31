#!/bin/bash

word=$1
cost=0

for (( i=0; i<${#word}; i++ )); do
    case ${word:${i}:1} in
    [aeioulnrst])
	cost=$(( $cost + 1 ))
	;;
    [dg])
	cost=$(( $cost + 2 )); ;;
    [bcmp]) cost=$(( $cost + 3 )); ;;
    [fhvwy]) cost=$(( $cost + 4 )); ;;
    [k]) cost=$(( $cost + 5 )); ;;
    [jx]) cost=$(( $cost + 8 )); ;;
    [qz]) cost=$(( $cost + 10 )); ;;
    esac
done

echo $cost
