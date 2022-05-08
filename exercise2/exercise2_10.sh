#!/bin/bash

read -p "What is your first name?:  " name
read -p "What is your year of birth?: " birth_year

current_year=$(date +%Y)

age=$((current_year-birth_year))

echo "---------------------------------"
echo -e "Name: $name\nAge:$age years"
echo "---------------------------------"