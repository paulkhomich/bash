#!/bin/bash

dna=${1:-""}
rna=""

for (( i=0; i<${#dna}; i++ )); do
    case ${dna:$i:1} in
    "G")
	rna="${rna}C"
 	;;
    "C")
	rna="${rna}G"
	;;
    "T")
	rna="${rna}A"
	;;
    "A")
	rna="${rna}U"
	;;
    *)
	echo "Invalid DNA: ${dna:i:1} char?"
	exit 1
	;;
    esac
done

echo $rna
