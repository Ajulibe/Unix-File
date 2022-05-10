#!/bin/bash

declare -a my_array

for var in "$@"
do
    my_array+=("$var")
done


sortedColNums=( $( printf "%s\n" "${my_array[@]}" | sort -n ) )


printf "%s\n" "${sortedColNums[@]}"
