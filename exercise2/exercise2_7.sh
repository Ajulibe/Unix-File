#!/bin/bash

read -p "Whats is the name of the file: " file

if [[ -z ${file} ]]
then
  echo "ERROR!!!! You must enter a file name"
  exit
fi

while read -r line
do
  echo "${#line} characters"
done < "$file"