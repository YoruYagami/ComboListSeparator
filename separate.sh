#!/bin/bash

# Check if an input file was provided as an argument
if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

# Check if the input file exists
if [[ ! -f $1 ]]; then
  echo "Input file $1 does not exist"
  exit 1
fi

# Create output files
username_file="username.txt"
password_file="password.txt"
> "$username_file"
> "$password_file"

# Read input file line by line and separate username and password
while read -r line; do
  username=$(echo "$line" | cut -d: -f1)
  password=$(echo "$line" | cut -d: -f2)
  
  # Append username and password to output files
  echo "$username" >> "$username_file"
  echo "$password" >> "$password_file"
done < "$1"
