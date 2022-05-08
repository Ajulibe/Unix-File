#!/bin/bash

input="file.txt"

while IFS= read -r line
do
  IFS=' '
  read -ra ADDR <<<"$line" #reading str as an array as tokens separated by IFS
  echo '--------------------------------------'
  echo "${ADDR[0]} ${ADDR[1]}"
  echo "${ADDR[3]}" | cut -d "!" -f 2
  echo '--------------------------------------'
done < "$input"

