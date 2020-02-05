#! /bin/bash
HOST=$1
USERNAME=$2
SKIP_COUNT=$3
echo "Host is $HOST ; Username is $USERNAME ; Skip Count is $SKIP_COUNT"
#Use seq command to generate numbers from 1 to n
for x in `seq 1 $SKIP_COUNT`
do
  echo "Skipping something ($1) ..."
shift
done
echo "total arguments passed: $#"
echo "Anything left is: $@"
