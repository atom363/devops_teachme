#!/bin/bash

mkdir -p myfolder       # Creates folder if it doesn't exist

cd myfolder
echo "Hello!" > 1
echo "$(date)" >> 1
touch 2
chmod 777 2
echo "$RANDOM" > 3
touch 4
touch 5