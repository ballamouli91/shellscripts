# Take a copy of the two files script1.sh and script2.sh above then experiment by tweaking them and running them and observing the output. This will help you get a feel for how exporting variables works.

#! /bin/bash
# test variable expoting
declare -x var="outer"
echo "outer before: $var"
bash ./export_innervar.sh
echo "outer after: $var"


######export_innervar.sh is below ## 
#! /bin/bash
#access exported variable from export_outervar.sh
echo "inner before $var"
export var=inner
echo "inner after $var"
