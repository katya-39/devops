#!/bin/bash

# Check if a parameter is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <number>"
  exit 1
fi

# Check if parameter is a number
if ! [[ $1 =~ ^[0-9]+$ ]]; then
  echo "The parameter is not a number."
  exit 1
fi

# Assign the parameter to a variable
number=$1

# Check if the number is even or odd
if [ $((number % 2)) -eq 0 ]; then
  echo "The number $number is even."
else
  echo "The number $number is odd."
fi