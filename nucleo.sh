#/bin/bash

dna=${1:-""}

count=(0 0 0 0)

for (( i=0; i<${#dna}; i++ )); do
    case ${dna:$i:1} in
    A)
	count[0]=$(( count[0] + 1 ))
	;;
    C)
        count[1]=$(( count[1] + 1 ))
        ;;
    G)
        count[2]=$(( count[2] + 1 ))
        ;;
    T)
        count[3]=$(( count[3] + 1 ))
        ;;
    *)
	echo "DNA must consist only [ACGT]"
	exit 1
	;;
    esac
done

echo "A: ${count[0]}    C: ${count[1]}    G: ${count[2]}    T: ${count[3]}"

