#! /bin/bash
#echo all arguments in different ways
for a in $*; do
echo $a
done
echo
for a in $@; do
echo $a
done
echo
for a in "$*";do
echo $a
done
echo
for a in "$@";do
echo $a
done
