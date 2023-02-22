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
username_file=$(dirname "$1")/username.txt
password_file=$(dirname "$1")/password.txt
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

# Print success message and file paths
echo -e "\033[32mThe separation was successful\033[0m"
echo "Username file: $username_file"
echo "Password file: $password_file"
