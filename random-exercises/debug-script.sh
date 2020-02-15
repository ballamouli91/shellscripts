#Write a shell script that exits on error and displays command as they will execute, including all expansions and substitutions. Use 3 ls command in your script. Make the first one succeed, the second one fail, and third one succeed. If you are using the proper options, the third ls command not be executed.

#!/bin/bash 
ls /home/runner/EnviousGreenMicroprogramming/hms
ls /home/runner/EnviousGreenMicroprogramming/hms/ms
ls /home/runner/EnviousGreenMicroprogramming/hms/apps

#run using bash -x (DEBUG) option 
