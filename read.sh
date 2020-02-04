## READ THE INPUT UNTIL THE INPUT IS PROVIDED EITHER Yy or Nn

#! /bin/bash                   
                               
echo -n "are you sure (Y/n)?"  
answered=                   
while [[ ! $answered ]]; do     
   read -r -n 1  answer 
   if [[ $answer = [Yy] ]]; then 
   answered="yes"
   elif [[ $answer = [Nn] ]]; then
   answered="no"
   fi
        
done                           
                               
printf " \n %s \n" $answered   
