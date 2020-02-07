# Create a simple script which will take two command line arguments and then multiply them together using vairious methods detailed.

read -p "enter number: " num1
read -p "enter another number: " num2

# method 1 using expr
# need to skip the special characters 
mutipled_value=$( expr $num1 \* $num2 )
added_value=$( expr $num1 + $num2 )
echo $mutipled_value
echo $added_value

# method 2 using paranthersis 
mutipled_value=$(( $num1 * $num2 ))
added_value=$(( $num1 + $num2 ))
echo $mutipled_value
echo $added_value

#metho3  using let
let a=$num1+$num2
let b=$num1*$num2
echo $a
echo $b
