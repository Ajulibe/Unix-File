#!/bin/bash

arr=(epita is the best school)

# remove the first element
arr=("${arr[@]:1}")
echo "---------------------------"

# remove the  last element
unset arr[${#arr[@]}-1]
echo "---------------------------"





echo "${arr[@]}"