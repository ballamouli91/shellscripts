#write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or 
# another type of file. Also perform an ls command against the file or directory with the long listing option.

echo “Enter the file path”
read FILE

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
