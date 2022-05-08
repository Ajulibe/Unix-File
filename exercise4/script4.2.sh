#!/bin/bash

read -p "enter the new word to add: " new_word

arr=(epita is the best school)

# beginnig of an array
arr=("$new_word" "${arr[@]}")
echo "---------------------------"

# add to the middle of the array
middle_index=$((${#arr[*]}/2))
echo "$middle_index"
arr=( "${arr[@]:0:$middle_index}" "$new_word" "${arr[@]:$middle_index}" )
echo "---------------------------"

# add to the end of the array
arr=( "${arr[@]}" "$new_word" )
echo "---------------------------"



echo "${arr[@]}"