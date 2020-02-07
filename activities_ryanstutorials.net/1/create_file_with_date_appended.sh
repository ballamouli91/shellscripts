#! /bin/bash
echo " enter file name you wanted to create: "
[[ $1 ]] || { echo “missing argument” >&2; exit 1; } 
echo "$#"
[[ $# -ne 1 ]] && { echo "need only one argument " >&2; exit 1; }

filename=$1
touch "${filename}_`date`"
