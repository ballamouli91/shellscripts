#! /bin/bash
#Create a simple script which will print the numbers 1 - 10 (each on a separate line) and whether they are even or odd.

for ((i=1;i<=10;i++)); do
echo $i
# let  d=$i%2
if [[ $i -eq 1 ]]; then 
echo 
if [[ $i%2 -eq 0 ]]; then 
echo " $i is even"
else 
echo "$i is odd"
fi
done
