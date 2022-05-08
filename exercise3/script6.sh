#!/bin/bash
var="This is a text
Over several
lines"
echo var
echo $var
echo "$var"
echo '$var'
echo ${#var}
echo ${var:20:5}
var="2*(5+5) "
echo $var
echo "$var"
echo $(($var))