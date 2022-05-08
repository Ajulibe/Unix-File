#!/bin/bash

new_array=()

function generator(){
    gen_item=$(shuf -i 1-50 -n 1)
    if [[ " ${new_array[*]} " =~ ${gen_item} ]]
    then
    generator
    else
    new_array+=("$gen_item")
    fi
}

for i in {1..5}
do
  generator
done

echo "${new_array[@]}"


