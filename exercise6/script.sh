#!/bin/bash

filename=Bash.bish.Bosh.boush.tar.gz

echo ${#filename}
echo ${filename:5}
echo ${filename:5:3}
echo ${#filename}
echo "${Filename:=lucas}"
echo $Filename
echo "${filename:-george}"
echo "$filename"
echo "${filename:?File}"
echo ${filename^}
echo ${filename^^}
echo ${filename,}
echo ${filename,,}
echo ${filename~}
echo ${filename~~}
echo ${filename#*sh.}
echo ${filename##*sh.}
echo ${filename%.b*}
echo ${filename%%.b*}
echo ${filename/sh/shell}
echo ${filename//sh/shell}
echo ${filename/sh}
echo ${filename//sh/shell}
echo ${filename:=10}
echo $filename