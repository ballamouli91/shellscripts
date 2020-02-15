# Created the start-up script for an application start and stop. it uses a logging function. Additionally, 
# tag each syslog message with “randomly” and include process ID. Generate a 3 random numbers.

#!/bin/bash
INPUT=$1
cd /usr/bin/mongodb-linux-x86_64-2.6.0/bin
case $INPUT in
start)
       ./mongod -f ../../mongod.conf &
       echo "Mongodb server Start"
       ;;
stop)
      PID_ID=$(ps -ef | grep mongo | cut -d" " -f3 | sed '1!d')
      kill $PID_ID
if [ $? -eq '0']
      echo "Mongodb server Stop"
      ;;
*)
     echo "Error input"
     ;;
esac

function logging()
  {
   MESSAGE=$@
   SET_MESSAGE="Random Number is:$MESSAGE"
   echo "$SET_MESSAGE"
   logger -i -p user.info "$SET_MESSAGE"
  }
logging $RANDOM
logging $RANDOM
logging $RANDOM
