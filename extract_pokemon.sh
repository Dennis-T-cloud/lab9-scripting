#!/bin/bash
./get_pokemon $1 > temp
head -n -2 temp > temp2
base64 -d temp2 > $1
rm temp temp2