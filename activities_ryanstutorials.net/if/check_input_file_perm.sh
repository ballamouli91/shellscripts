#Create a Bash script which will accept a file as a command line argument and analyse it in certain ways. 
# eg. you could check if the file is executable or writable. You should print a certain message if true and another if false.

#! /bin/Bash
echo -n "Enter file name : "
read file
 if [[ -f $file ]]; then
 # find out if file has write permission or not
[ -w $file ] && W="Write = yes" || W="Write = No"
 
# find out if file has excute permission or not
[ -x $file ] && X="Execute = yes" || X="Execute = No"
 
# find out if file has read permission or not
[ -r $file ] && R="Read = yes" || R="Read = No"
 
echo "$file permissions"
echo "$W"
echo "$R"
echo "$X"

else 
echo " please provide file only"
fi 
