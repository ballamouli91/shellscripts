#! /bin/bash
# -- End of options. Anything further on the command line is an argument, not an option.

echo Hello World
[[ $# -ne 2 ]] && { echo " need exactly two args" >&2 ; exit 1; } 
for f in *"$1";
 do
mv -- "$f" "${f/%$1/$2}"
done
