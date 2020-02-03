#!/bin/bash

origin=${1:-""}
cands=(${@:2})

for (( i=0; i<${#cands[*]}; i++ )); do
    oricopy=$origin
    cand=${cands[$i]}

    #фильтр по длине
    if [[ ${#oricopy} -ne ${#cand} ]]; then cands[$i]=""; continue; fi
    #фильтр по составу
    for (( j=0; j<${#cand}; j++ )); do
	case ${cand:$j:1} in
	[$oricopy])
	    oricopy=${oricopy/${cand:$j:1}/""}
	    ;;
	*)
	    cands[$i]=""
	    break
	    ;;
	esac
    done
done

echo ${cands[*]}


