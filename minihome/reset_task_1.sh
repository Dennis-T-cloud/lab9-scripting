#!/bin/bash

# clear out all the text files and mp3 files
rm -f Books/*.txt
rm -f Music/*.mp3
rm -f Books/*.mp3
rm -f Music/*.txt
rm -f *.txt
rm -f *.mp3

# repopulate all music files
touch "mulberry_mouse.mp3"
touch "watermelon_man.mp3"
touch "the_little_ships.mp3"
touch "brasilian_skies.mp3"
touch "banbard.mp3"

# repopulate all text files
wget https://www.gutenberg.org/cache/epub/11/pg11.txt -O alice.txt
wget https://www.gutenberg.org/files/84/84-0.txt -O frankenstein.txt
wget https://www.gutenberg.org/cache/epub/1526/pg1526.txt -O twelfth_night.txt
wget https://www.gutenberg.org/cache/epub/68283/pg68283.txt -O call_of_cthulhu.txt
wget https://www.gutenberg.org/cache/epub/67071/pg67071.txt -O the_star.txt


