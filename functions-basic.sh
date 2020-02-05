function example {
  echo "hello world $1 $2"
}
example $1 $2

sum () {
 
  echo $(( $2 - $1 ))
   return $(( $1 * $2 ))
}
sum $1 $2
echo $? 

starts_with_a () {
[[ $1 == [Aa]* ]];
return $?
}
starts_with_a
echo $?

if starts_with_a; then
echo "yes"
else
echo "no"
fi
