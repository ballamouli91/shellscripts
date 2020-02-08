#Remember when we looked at variables we discovered $RANDOM will return a random number. This number is between 0 and 32767 which is not always the most useful. Let's write a script which will use this variable and some arithmetic (hint: play with modulus) to return a random number between 0 and 100.
#! /bin/bash
#Random number between 0 and 9 inclusive
echo $((RANDOM%10))
#ANother way string manipluation cut from 0th potion with n char
echo ${RANDOM:0:1} # random number between 1 an 9

#RANDOM NUMBER BETWEEN 0 -10
echo $((RANDOM%10 + 1))

#Random number between 0 and 100 inclusive
echo $((RANDOM%100 + 1))

echo ${RANDOM:0:2} # random number between 1 an 99
