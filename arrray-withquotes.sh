#!/bin/bash
array=("first item" "second item" "third" "item")
echo "Number of items in original array: ${#array[*]}"
for ix in ${!array[*]}
do
printf "   %s\n" "${array[$ix]}"
done
echo
arr=(${array[*]})
echo "length After unquoted expansion: ${#arr[*]}"
for ix in ${!arr[*]}
do
printf "   %s\n" "${arr[$ix]}"
done
echo
arr=("${array[*]}")
echo "length After * quoted expansion: ${#arr[*]}"
for ix in ${!arr[*]}
do
     printf "   %s\n" "${arr[$ix]}"
done
echo
arr=("${array[@]}")
echo "lenght After @ quoted expansion: ${#arr[*]}"
for ix in ${!arr[*]}
do
    printf "   %s\n" "${arr[$ix]}"
done
