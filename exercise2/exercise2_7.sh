#!/bin/bash

if [[ -z $1 ]]
then
  echo "ERROR!!!! You must enter a file name"
  exit
fi

while read -r line
do
  echo "${#line} characters"
done < "$1"