#!/bin/bash

# dic=/usr/share/dict/words
dic=/usr/share/dict/american-english

answer=$(grep "\b$1\b" "$dic")

if [[ -z $answer ]]
then
  echo "FALSE!!!!!"
else
  echo 'TRUE!!!!!'
fi





