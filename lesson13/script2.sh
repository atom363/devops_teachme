#!/bin/bash

# Count number of files in myfolder
ls ~/myfolder | echo "The number of files in myfolder is $( wc -l)"

# Find and change all files with permission 777 to 664
echo "Files with permissions 777: "
find ~/myfolder/ -type f -perm 0777 -print -exec chmod 664 {} \;

# Find and deletes all empty files
echo "Found empty files that will be deleted: "
find ~/myfolder -type f -empty -print -delete

# Delete first line in all files
echo "First lines will be deleted: "
sed '1d' ~/myfolder/*
sed -i '1d' ~/myfolder/*