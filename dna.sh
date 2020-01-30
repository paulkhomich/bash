#!/bin/bash

n=0

echo -n "Write first DNA: "
read d1

echo -n "Write second DNA (len ${#d1}): "
read d2

if [ ${#d1} -ne ${#d2} ]
then
  echo -1
else
  for (( i = 0; i < ${#d1}; i++ ))
  do
    if [ ${d1:i:1} != ${d2:i:1} ]
    then
      n=$((n+1))
    fi
  done

  echo $n
fi
