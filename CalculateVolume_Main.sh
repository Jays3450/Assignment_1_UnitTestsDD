#!/bin/bash

calculateVolume() {
height=$1
width=$2
length=$3

 # Validate that all inputs are provided
  if [[ $# -ne 3 ]]; then
    echo "Error: Exactly 3 parameters (height width length) are required."
    return 1
  fi
  # Validate that all inputs are integers only
  if ! [[ "$height" =~ ^[0-9]+$ && "$width" =~ ^[0-9]+$ && "$length" =~ ^[0-9]+$ ]]; then
    echo "Error: Only integer inputs are supported."
    return 1
  fi
 
  # Validate that all inputs are positive integers only
  if ! [[ "$height" =~ ^[0-9]+$ && "$width" =~ ^[0-9]+$ && "$length" =~ ^[0-9]+$ ]]; then
   echo "Error: Only integer inputs are supported."
   return 1
  fi

  volume=$((height * width * length))
  echo "$volume"
}
