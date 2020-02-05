#! /bin/bash                                                              
#delare varibale as readonly(-r) and integer only                         
declare -ir target=$(( ($RANDOM % 100) + 1 ))                             
declare -i guess=0                                                        
                                                                          
until [[ $guess == $target ]]; do                                         
 read -p "take a guess: " guess                                           
# check if guess is zero then continue                                    
((guess)) || continue                                                     
#use greater then sysmbols as the declared variables are inetegers        
if [[ $guess < $target ]]; then                                           
echo " higher!"                                                           
elif [[ $guess > $target ]]; then                                         
echo "lower"                                                              
else                                                                      
echo " you found it "                                                     
fi                                                                        
done                                                                      
exit 0                                                                    
