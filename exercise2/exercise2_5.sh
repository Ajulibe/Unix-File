#!/bin/bash


read -p 'Enter a decimal number: ' d_number

read -p 'what format do you want (octal, hexa, binary): ' format

if [[ "${format}" == 'octal' ]]
then
echo "--------------------------"
echo "obase=8; $d_number" | bc
echo "--------------------------"
elif [[ "${format}" == 'hexa' ]]
then
echo "--------------------------"
echo "obase=16; $d_number" | bc
echo "--------------------------"
elif [[ "${format}" == 'binary' ]]
then
echo "--------------------------"
echo "obase=2; $d_number" | bc
echo "--------------------------"
else
echo "--------------------------"
echo "Invalid format choice !!!!"
echo "--------------------------"
fi