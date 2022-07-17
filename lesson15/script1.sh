#!/bin/bash

function multiplier () {
        return $(($1 * $2))
}

multiplier $1 $2
var=$?

if (($(($var % 2)) == 0));
then
        return 0
else
        return 1
fi