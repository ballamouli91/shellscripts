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

##Modify it so that you can specify as a command line argument the upper limit of the random number.
# Can you make it so that a lower limit can be specified also? eg. if I ran ./random.sh 10 45 it would only return random numbers between 10 and 45.

#NOTE: a NUMBER1 divided by the a number2 the reminder )modulus % is always less than the number 2

echo $(( RANDOM % (45 - 10 + 1 ) + 10 )) # number can be between 10 to 45
echo $(( RANDOM % ($1 - $2 + 1  ) + $2 )) # argument 1 should be greater than argument 2
