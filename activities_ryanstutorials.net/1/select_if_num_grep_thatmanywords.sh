#Expand the previous activity so that if a number is supplied as the first command line argument 
# then it will select from only words with that many characters. Hint: Grep may be useful here.

#! /bin/bash
read -p "enter something: " var
echo $var
re='^-?[0-9]+([.][0-9]+)?$'
if ! [[ $var =~ $re ]] ; then
   echo "error: Not a number" >&2; exit 1
else 
echo " lenth of inetger is : ${#var}"
count=${#var}
echo " lenght of words to be searched: $count"
grep -E  "^[[:alpha:]]{$count}$" words
echo ===
grep -E  "\b[a-zA-Z]{$count}\b" words
fi
