#!/bin/bash

function multiplier () {
        return $(($1 * $2))
}

multiplier $1 $2
var=$?

if (($(($var % 2)) == 0));
then
        echo "0"
else
        echo "1"
fi