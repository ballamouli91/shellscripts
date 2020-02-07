# create a script which will take a filename as its first argument and create a dated copy of the file. eg. if our file was named file1.txt it would create a copy such as 2020-02-06_file1.txt. (To achieve this you will probably want to play with command substitution and the command date

#! /bin/bash
echo " enter file name you wanted to create: "
[[ $1 ]] || { echo “missing argument” >&2; exit 1; } 
echo "$#"
[[ "$#" -gt 1 ]]; { echo "need only one argument" >&2; exit 1; }
filename= $1
touch "$(date)_$filename"
