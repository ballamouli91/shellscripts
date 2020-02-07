# create a simple script which will accept some command line arguments and echo out some details about them 
# (eg, how many are there, what is the secone one etc).

#! /bin/bash
echo "first argument: $1"
echo "second argument : $2"
echo "total number of argumrnts: $#"
echo "my script file name is: $0"
echo "process id of my script is: $$"
echo " last exit code : $?"
