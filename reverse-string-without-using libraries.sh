string="$1" 
# you can use read -p "Enter string:" string
	reverse_string=""
	string_length="${#string}"
	while (( "$string_length">=1 )) 
	do
# ${string:position:length}” extract single single character from string.bash builtin without using sed and awk
  	   string_length=$(( $string_length -1))
   	  reverse_string="$reverse_string${string:$string_length:1}"
	done
	echo "$reverse_string"
