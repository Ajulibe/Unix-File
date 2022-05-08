#!/bin/bash

arr=(epita is the best school)

echo ${#arr}
echo ${#arr[*]}
echo "${arr}"
echo "${arr[@]}"
echo ${#arr[0]}
echo ${#arr[1]}
echo ${#arr[2]}
echo ${#arr[3]}
echo "${arr[@]:3}"
echo "${arr[@]:2:2}"