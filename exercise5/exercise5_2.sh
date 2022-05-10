#!/bin/bash

 read -p "enter the name of the file: " input


while IFS= read -r line
do
  IFS=';'
  read -ra ADDR <<<"$line" #reading str as an array as tokens separated by IFS
  echo '--------------------------------------'

  for i in "${!ADDR[@]}"; do
  if [[ ${i} == 2 ]] || [[ ${i} == 3 ]] || [[ ${i} == 4 ]]
  then
  # # check the values to be sure of the ranfe
  new_index=$((i))

  if [[ "${ADDR[new_index]}" -ge '18' ]]
  then
  ADDR[new_index]='A'
  elif [[ "${ADDR[new_index]}" -lt '18' ]] && [[ "${ADDR[new_index]}" -ge '16' ]]
  then
  ADDR[new_index]='B'
  elif [[ "${ADDR[new_index]}" -lt '16' ]] && [[ "${ADDR[new_index]}" -ge '14' ]]
  then
  ADDR[new_index]='C'
  elif [[ "${ADDR[new_index]}" -lt '14' ]] && [[ "${ADDR[new_index]}" -ge '12' ]]
  then
  ADDR[new_index]='D'
  elif [[ "${ADDR[new_index]}" -lt '12' ]] && [[ "${ADDR[new_index]}" -ge '10' ]]
  then
  ADDR[new_index]='E'
  elif [[ "${ADDR[new_index]}" -lt '10' ]]
  then
  ADDR[new_index]='F'
  fi
  fi
  done
  echo "${ADDR[@]}"

  echo '--------------------------------------'
done < "$input"