# create a script which will behave as a filter. Create a script which will rearrange the output of the command ls -l in a useful way (eg maybe you only print the filename, size and owner) (Hint: awk can be useful here)

#! /bin/bash

ls -sl $1 | awk '{ print "File: " $10 ", size:" $1 ", Group: " $5 }'
