#!/bin/bash
./get_pokemon $1 | head -n -2 | base64 -d
# rm temp temp2
