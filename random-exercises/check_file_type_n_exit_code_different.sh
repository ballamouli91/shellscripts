#Write a shell script that accepts a file or directory name as an argument. 
# Have the script report if it is reguler file, a directory, or another type of file.
#If it is a directory, exit with a 1 exit status. If it is some other type of file, exit with a 2 exit status.

echo “Enter the file path”
FILES=$@
# FILE=$1 #accepts the file or directory name as an argument instead of prompting the user to enter it

for FILE in $FILES; do
if [[ -f $FILE ]]; then
 echo "$FILE is a regular file"
 elif 
[[ -d $FILE ]]; then
 echo "$FILE is a regular directory"
 exit 1
 else 
 echo " this some other type of file"
 exit 2
 fi
 echo " lost of conetents are:..."
 ls -l $FILE
 echo "============"
 done
