#!/bin/bash
for i in *.doc
do
mv -v $i ${i%.doc}.txt
done