#! /bin/bash
echo " enter file name you wanted to create: "
[[ "$#" -eq 0 ]] || [[ "$#" -gt 1 ]] ; echo " need only one argument"
filename=$1
touch "$(date)_$filename"
