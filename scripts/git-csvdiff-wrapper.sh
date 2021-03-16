#!/bin/bash

if [[ ! -n "$(command -v csvdiff)" ]]; then
    echo "csvdiff not found"
    echo "Please check https://github.com/aswinkarthik/csvdiff"
    exit 1
fi

OLD_FILE=$1
NEW_FILE=$2

echo "Diffing $OLD_FILE and $NEW_FILE"

if [[ "$OLD_FILE" =~ mortality_states ]]; then
    csvdiff $OLD_FILE $NEW_FILE -p 0,1,2 --ignore-columns 4
elif [[ "$OLD_FILE" =~ mortality_cities ]]; then
    csvdiff $OLD_FILE $NEW_FILE -p 0,1,2,3,4 --ignore-columns 6
else
    csvdiff $OLD_FILE $NEW_FILE
fi