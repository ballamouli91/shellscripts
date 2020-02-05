#! /bin/bash
# test variable expoting
declare -x var="outer"
echo "outer before: $var"
./export_innervar.sh
echo "outer after: $var"
