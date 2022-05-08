#!/bin/bash

read -p "Type in the word to search for:  " word

# dic=/usr/share/dict/words
dic=/usr/share/dict/american-english

answer=$(grep "\b$word\b" "$dic")

if [[ -z $answer ]]
then
  echo "FALSE!!!!!"
else
  echo 'TRUE!!!!!'
fi





