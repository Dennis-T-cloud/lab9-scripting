#!/bin/bash

# clear out all the text files 
rm -f Novels/*.txt
rm -f Short_Stories/*.txt
rm -f *.txt

# repopulate all text files
wget https://www.gutenberg.org/cache/epub/11/pg11.txt -O alice.txt
wget https://www.gutenberg.org/files/84/84-0.txt -O frankenstein.txt
wget https://www.gutenberg.org/cache/epub/1526/pg1526.txt -O twelfth_night.txt
wget https://www.gutenberg.org/cache/epub/68283/pg68283.txt -O call_of_cthulhu.txt
wget https://www.gutenberg.org/cache/epub/67071/pg67071.txt -O the_star.txt

