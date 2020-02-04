#!/bin/bash
# Breaking outer loop from inner loop
for (( a = 1; a < 5; a++ ))
do
echo “outer loop: $a”
for (( b = 1; b < 100; b++ ))
do
if [ $b –gt 4 ]
then
break 2  $ this is break option, we simply use break but if we are in inner loop & want to exit out of outer loop, we use break 2.
fi
echo “Inner loop: $b ”
done
done
