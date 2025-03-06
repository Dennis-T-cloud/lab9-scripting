#!/bin/bash

threshold=$1

for file in *.txt; do
    num_words=$(wc -w < "$file")
    echo $num_words
    if [ "$num_words" -gt "$threshold" ]; then
        mv $file Novels
    else
        mv $file Short_Stories
    fi
done