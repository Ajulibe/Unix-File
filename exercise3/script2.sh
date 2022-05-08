#!/bin/bash
a=1
if [ $a -eq 1 ]; then echo "a is equal to $a"; fi
for i in {1..5}; do echo "Hello World"; done
while [ $i -le 10 ]; do echo $i; sleep 2; done