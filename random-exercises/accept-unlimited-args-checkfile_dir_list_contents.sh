##write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or 
# another type of file. Also perform an ls command against the file or directory with the long listing option.
#Modify the previous script to accept an unlimited number of files and directories as arguments.
#! /bin/bash
 
 echo “Enter the file path”
FILES=$@
# FILE=$1 #accepts the file or directory name as an argument instead of prompting the user to enter it

for FILE in $FILES; do
if [[ -f $FILE ]]; then
 echo "$FILE is a regular file"
 elif 
[[ -d $FILE ]]; then
 echo "$FILE is a regular directory"
 else 
 echo " this some other type of file"
 fi
 echo " lost of conetents are:..."
 ls -l $FILE
 echo "============"
 done
