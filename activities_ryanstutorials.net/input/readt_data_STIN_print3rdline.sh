# Create a script which will take data from STDIN and print the 3rd line only.

#! /bin/bash
cat $1 | head -3 | tail -1
