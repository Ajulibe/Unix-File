#!/bin/bash

read -p "What is the Distance covered ?: " distance_travelled
read -p "What is the time taken ?: " time_taken

echo "scale=2; $distance_travelled / $time_taken" | bc