#chnage the externion of file using basename utitlity
#! /bin/bash                                                                     
                                                                                 
if [[ $# -ne 2 ]];                                                               
then echo " arguments are less then two, please provide minimum two arguments"   
fi                                                                               
                                                                                 
for f in *"$1"; do                                                               
base=$(basename "$f" "$1")                                                       
 mv "$f" "${base}$2"                                                             
done                                                                             
