#!/bin/bash

read -p 'enter your first operand: ' operand1


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

checkoperand1


echo '-------------------------------'

read -p 'enter your second operand: ' operand2

function checkoperand2(){
if [[ -z "$operand2" ]]
then
   read -p 'Operand 2 cannot be empty!!! enter your first operand: ' operand2

   if [[ -z "$operand2" ]]
   then
   checkoperand2
   fi
fi
}

checkoperand2

echo '-------------------------------'

read -p "enter your operator (either +, -, x, /, pow, mod): " operator


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

checkoperator

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
      multiplier=$(($operand1$operator$operand2))
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

