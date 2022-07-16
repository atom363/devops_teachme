#!/bin/bash

tree_main () {
    shopt -s nullglob dotglob

    for pathname in "$1"/*; do
        if [ -d "$pathname" ]; then
            tree_main "$pathname"
        else
            printf '%s\n' "$pathname"
        fi
    done
}

echo "Enter directory in format /home"
read dir
tree_main $dir