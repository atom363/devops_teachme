#!/bin/bash

array=(one two three four five) # Define array

print_array () {
       echo "Array items:" # Print array items
       for item in ${array[*]}
       do
           printf "   %s\n" $item
       done
}

print_array $array