#! /bin/bash

if [[ ! $1 ]]; then
echo "missing arguments"
fi

scriptname=$1
bindir="${HOME}/bin"
filename="${bindir}/$scriptname"
i
if [[ -e $filename ]]; then
echo "$filename aleady exists"
fi

if type "$scriptname"; then
echo " there is already a command with the ${scriptname} "
fi

if [[ ! -d $bindir ]]; then
  if mkdir "$bindir"; then
    echo "created ${bindir}"
else
echo "couldnot create ${bindir}"
exit 1
fi
fi

echo " we have reached end of the sciript"
exit 0
