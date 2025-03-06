#!/bin/bash

# Function to generate a random filename
generate_filename() {
    tr -dc 'a-zA-Z0-9' </dev/urandom | head -c 10
}

# Function to generate random content
generate_content() {
    local min_length=$1
    local max_length=$2
    local length=$(( RANDOM % (max_length - min_length + 1) + min_length ))
    tr -dc 'a-zA-Z ' </dev/urandom | fold -w $length | head -n 1 | sed 's/./& /g'
}


for i in {1..63}; do
    filename="$(generate_filename).txt"
    generate_content 10 20 > "$filename"
done


for i in {1..37}; do
    filename="$(generate_filename).txt"
    generate_content 30 50 > "$filename"
done


for i in {1..60}; do
    filename="$(generate_filename).mp3"
    touch "$filename"
done

echo "All files generated successfully!"
