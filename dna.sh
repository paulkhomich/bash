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
  for i in {1..4}
  do
    echo $i
  done
fi
