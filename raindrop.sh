
#!/bin/bash

num=$1

ans=""

if [ $((num % 3)) -eq 0 ]
then
  ans="${ans}Pling"
fi

if [ $((num % 5)) -eq 0 ]
then
  ans="${ans}Plang"
fi

if [ $((num % 7)) -eq 0 ]
then
  ans="${ans}Plong"
fi

echo $ans







