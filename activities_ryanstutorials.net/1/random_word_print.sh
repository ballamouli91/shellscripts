#Create a script which will print a random word. There is a file containing a list of words on your system
# (usually /usr/share/dict/words or /usr/dict/words). Hint: Piping will be useful here.
#! /bin/bash
fileotread="/usr/share/dict/words"
no_of_words="$(wc -w $fileotread | cut -d' ' -f1)"
echo " num of words: $no_of_words "
line_number_to_print="$(( $RANDOM % $no_of_words))"
echo " line number of the word to be printed : "$line_number_to_print" "
 [[ $line_number_to_print -eq 0 ]] && (( line_number_to_print = $line_number_to_print + 1 ))
head -n ${line_number_to_print} ${fileotread} | tail -n +${line_number_to_print}
