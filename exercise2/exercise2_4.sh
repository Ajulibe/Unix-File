#!/bin/bash




read -p 'enter a number between 1 and 12: ' month

declare -A months=( ["1"]="31" ["2"]="29" ["3"]="31" ["4"]="30" ["5"]="31" ["6"]="30" ["7"]="31" ["8"]="31" ["9"]="30" ["10"]="31" ["11"]="30" ["12"]="31")

echo "-----------------------------------------"



echo "This month has: ${months[$month]} days"