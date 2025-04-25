#!/bin/bash

mapping="$*"

while read -r line; do
  arr=($line)
  if ls $(echo "${arr[0]}.pdf") &>/dev/null; then
    mv $(echo "${arr[0]}.pdf") $(echo "${arr[0]}_${arr[1]}.pdf")
  fi
done < $mapping

#For reading from a file, you can use the following:

#while read -r line; do
#  arr=($line)
#done < a.txt
#This piece of code reads from the file a.txt line by line. The line is broken up into tokens using spaces as a separator and stored as an array in arr. Now, the words can be indexed as in a normal array.
