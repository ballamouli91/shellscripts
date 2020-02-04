#! /bin/bash                              
                                          
target=$(($RANDOM % 100 ))                
guess=                                    
                                          
until [[ $guess -eq $target ]]; do        
 read -p "take a guess: " guess           
if [[ $guess -lt $target ]]; then         
echo " higher!"                           
elif [[ $guess -gt $target ]]; then       
echo "lower"                              
else                                      
echo " you found it "                     
fi                                        
done                                      
exit 0                                    
