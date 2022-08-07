#!/bin/bash

touch file
echo "\"$(date)\"" > file
echo "'$(date)'" >> file
echo "\`$(date)\`" >> file

a="Hello World!"
b=$(hostname)
c=$( expr 1 + 1)

echo -e "$a\n$b\n$c"