# Create a Bash script which will take 2 numbers as command line arguments. 
# It will print to the screen the larger of the two numbers.

#! /bin/bash 
echo -n "enter the first number:"; read x
echo -n "enter the second number:"; read y
if [[ "$x" -lt "$y" ]]; then
       echo " lager number is : $y"
elif [[ "$x" -gt "$y" ]]; then
    #    echo "$y < $x"
         echo " larger number is : $x"
else
        echo "$x == $y"
fi
