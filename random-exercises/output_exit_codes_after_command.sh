#Write a script that executes the command “cat /etc/shadow”. If the command return a 0 exit status, report “command succeeded” and exit with a 0 exit status.
# If the command returns a non-zero exit status, report “Command failed” and exit with a 1 exit status.
cat /etc/shadow
x=$?
[[ $x -eq 0 ]] && echo "command success" exit 0
[[ $x -ne 0 ]] && echo " command failed" exit 1
