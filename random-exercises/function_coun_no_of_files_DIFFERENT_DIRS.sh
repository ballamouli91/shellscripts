# Make the “file_count” function accept a directory as an argument. Next, have the function display the name of the directory
followed by a colon. Finally display the number of files to the screen on the next line. 
Call the function three times. First on the “/etc” directory, next on the “/var” directory and finally on the “/usr/bin” directory.



function file_count()
 {
   dirs=$@
   for dir in $dirs; do
   echo " directory to check is: $dir"
   local NUMBER_OF_FILE=$(ls -1 $dir | wc -l)
    echo "nmber of files in directory $dir : $NUMBER_OF_FILE"
    done
 }

file_count /etc /var /usr/bin
