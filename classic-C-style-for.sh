#! /bin/bash
fruits=("Apple" "Mango" "Pineapple" "Banana" "Orange" "Papaya" "Watermelon")
len=${#fruits[*]}         # get total elements in an array
# print it
for (( i=0; i<${len}; i++ ));
do      echo "${fruits[$i]}"
done
