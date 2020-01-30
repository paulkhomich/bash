#!/bin/bash

phrase="${1} "
ans=""

while [[ -n $phrase ]]
do
  ans="${ans}${phrase:0:1}"
  phrase=${phrase#*" "}
done

echo $ans




