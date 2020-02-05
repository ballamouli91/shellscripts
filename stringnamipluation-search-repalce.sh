#!/bin/bash
#Replace first occurrence of word --> ${variable/pattern/string}
string="hello world, hello jim"
echo ${string/hello/bello}
#Replace all occurrences of word --> {variable//pattern/string}

string="hello world, hello jim"
echo ${string//hello/bello}

#If $substring matches front end of $string, substitute $replacement for $substring. ==>${string/#substring/replacement}
stringZ=abcABC123ABCabc
echo ${stringZ/#abc/XYZ}

# If $substring matches back end of $string, substitute $replacement for $substring. ==>{string/%substring/replacement}

stringZ=abcABC123ABCabc

echo ${stringZ/%abc/XYZ}

if [[ $# -ne 2 ]] && { echo " need exactly two args" >&2; exit 1; }
for f in *"$1"; do
mv "$f" "${f/%$1/$2}"
done
