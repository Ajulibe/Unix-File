#!/bin/bash
for i in `seq 8`
do
echo -n "$i …"
t=$((2*var+20))
echo $((t % 7 + 1 ))
done
echo DONE …