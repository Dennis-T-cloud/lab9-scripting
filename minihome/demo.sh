#!/bin/bash

if [ $1 -gt 5 ]; then
    echo "Number is greater than 5"
else
    echo "Number is 5 or less"
fi

for item in <list of items> ; do
    # do something with $item
done

for var in item1 item2 item3; do
    echo "$var"
done

for i in {1..5}; do
    echo "Number: $i"
done

for file in *.txt; do
    echo "Processing $file"
done
