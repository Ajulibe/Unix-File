#!/bin/bash

read -p "how many numbers do you want to enter? " no_of_numbers

declare -a my_array

for ((i=1;i<=no_of_numbers;i++))
do
   if [[ $i == '1' ]]
   then
    read -p "input the ${i}st number: " num
    my_array+=("$num")
  elif [[ $i == '2' ]]
  then
   read -p "input the ${i}nd number: " num
    my_array+=("$num")
  elif [[ $i == '3' ]]
  then
    read -p "input the ${i}rd number: " num
    my_array+=("$num")
  else
    read -p "input the ${i}th number: " num
    my_array+=("$num")
  fi
done



IFS=$'\n' sorted=($(sort <<<"${my_array[*]}")); unset IFS

printf "%s\n" "${sorted[@]}"
