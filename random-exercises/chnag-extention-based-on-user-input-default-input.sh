##Write the script that renames files based on the file extension. Next,It should ask the user what prefix to prepend to the file name(s). By default, the prefix should be the current date in YYYY-MM-DD format. If the user simply press enter,the current date will be used. Otherwise,whatever the user entered will be used as the prefix. 
#Next,it should display the original file name and new name of the file. Finally,it should rename the file.

#!/bin/bash
cd $(pwd)
echo "Pleace enter the file extension:"
   read EXTENSION
echo "Pleace enter the prifix:(press enter for $DAY)"
   read DAY
   [[ $DAY ]] || DAY=$(date +%F)
for NAME in *.$EXTENSION
 do
   echo "Renaming $NAME to ${DAY}-${NAME}"
   mv $NAME ${DAY}-${NAME}
 done
