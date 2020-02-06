#! /bin/bash
if [[ $1 == -l ]]; then
#send all output to log file if input arg is -l
exec >logfile
fi
#send all output to screen if the & and nohup is used
#nohup process will rurn even if uses signout and signin
declare -i i=10
while true; do
echo "still here $((++i))"
sleep 1
done
