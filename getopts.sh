#!/bin/bash
#run the script without a parameter we won't see any error message in the output. 
#This is because we've started the option string with a colon :a:
while getopts ":a:b:" opt; do
  case $opt in
     a)
       echo "argument -a called with parameter $OPTARG" >&2
       ;;
     b)
       echo "argument -b called with parameter $OPTARG" >&2
       ;;
       # Even in "silent error mode", you may want to communicate your own message to the user informing them that the command is invalid. 
       #You can implement a catch-all for any argument that doesn't match the option string or is missing a parameter:
     *)
       echo "invalid command: no parameter included with argument $OPTARG"
       ;;
  esac
done
