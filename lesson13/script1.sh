#!/bin/bash

mkdir -p ~/myfolder       # Creates folder if it doesn't exist

cd ~/myfolder || exit
echo "Hello!" > file1
date >> file1
touch file2
chmod 777 file2
echo "$RANDOM" > file3
touch file4
touch file5