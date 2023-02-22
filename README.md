
# WordlistSeparator

This is a bash script that separates usernames and passwords from a user-specified text file in the format username:password and creates two output files: username.txt and password.txt, containing all usernames and passwords, respectively.


## Requirements

This script requires Bash to run. It has been tested on macOS and Ubuntu, but should work on other Unix-like systems as well.
## How it works

The script checks if an input file was provided as an argument, and if the file exists. If either of these checks fails, the script prints an error message and exits.

If the input file is valid, the script creates two output files, username.txt and password.txt, and clears their contents. The script then reads the input file line by line, separates the username and password using the cut command and appends them to the respective output files.
## Usage

1. Clone the repo
   ```sh
   git clone https://github.com/YoruYagami/separate
   ```
2. Change Permission
   ```sh
   chmod +x separate.sh
   ```
3. Execute
   ```sh
   ./separate.sh
   ```
## Example

Suppose we have a file wordlist.txt containing the following lines:

   ```
alice:password1
bob:password2
charlie:password3
   ```

We can use the script to separate the usernames and passwords as follows:
   ```
./separate.sh users.txt
   ```

This will create two output files, username.txt and password.txt, containing the following:
   ```
username.txt:

alice
bob
charlie

   ```
   ```
password.txt:

password1
password2
password3

   ```
