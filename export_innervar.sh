#! /bin/bash
#access exported variable from export_outervar.sh
echo "inner before $var"
export var=inner
echo "inner after $var"
