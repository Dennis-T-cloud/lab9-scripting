#!/bin/bash

threshold=20000

for file in *.txt ; do

    num_words=$(wc -w < "$file")

    if [ "$num_words" -gt "$threshold" ]; then
        mv "$file" Novels
    else
        mv "$file" Short_Stories
    fi
done