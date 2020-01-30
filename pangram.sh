#!/bin/bash

sent=$1

for i in {a..z}; do
    if [[ ! $sent =~ "$i" ]]; then exit 1; fi
done

echo "pangram!"



