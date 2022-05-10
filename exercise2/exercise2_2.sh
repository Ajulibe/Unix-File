#!/bin/bash

operand1=''
operand2=''
operator=''

function checkoperand1(){
if [[ -z "$operand1" ]]
then
   read -p 'Operand 1 cannot be empty!!! enter your first operand: ' operand1

   if [[ -z "$operand1" ]]
   then
   checkoperand1
   fi
fi
}

function checkoperand2(){
if [[ -z "$operand2" ]]
then
   read -p 'Operand 2 cannot be empty!!! enter your second operand: ' operand2

   if [[ -z "$operand2" ]]
   then
   checkoperand2
   fi
fi
}

function checkoperator(){
if [[ -z "$operator" ]]
then
   read -p 'operator cannot be empty!!! enter your first operand: ' operator
   if [[ -z "$operator" ]]
   then
   checkoperator
   fi
fi
}




if [[ -z $1 ]]
then
  read -p 'enter your first operand: ' input
  operand1=$input
  checkoperand1
else
  operand1=$1
fi

if [[ -z $2 ]]
then
  read -p 'enter your second operand: ' input
  operand2=$input
  checkoperand2
else
  operand2=$2
fi


if [[ -z $3 ]]
then
  read -p 'enter your operator (either +, -, x, /, pow, mod): ' input
  operator=$input
  checkoperator
else
  operator=$3
fi




function hello(){
case "$operator" in
   "+")
      sum=$(($operand1$operator$operand2))
      echo $sum
      ;;
   "-")
      difference=$(($operand1$operator$operand2))
      echo $difference
      ;;
   "x")
      multiplier=$((operand1*operand2))
      echo $multiplier
      ;;
    "/")
      division=$(($operand1$operator$operand2))
      echo $division
      ;;
     "//")
      remainder=$(($operand1$operator$operand2))
      echo $remainder
      ;;
     "pow")
      powers=$((operand1**operand2))
      echo $powers
      ;;
   "mod")
      modulo=$((operand1%operand2))
      echo $modulo
      ;;
   *)
     echo "command not recognized"
     ;;
esac

}


hello

