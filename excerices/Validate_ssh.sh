# Write a program that can parse an integer array and verify that is of social security number format. SSN number format is [3 digits – 2 digits – 4 digits] Ex: 123-45-5678
read -p "Enter your SSN Number seperated by 'dash' : " input                                                                   
#! /bin/bash
for i in ${input[@]}                                                                                                           
do                                                                                                                             
echo " entered SSN number is : $input "                                                                                        
(echo "$input" | grep -qE  '\b[0-9]{3}-[0-9]{2}-[0-9]{2}\b' ) && echo "enetred value is a valid SSN " || echo "invalid SSN !!!"
done                  
