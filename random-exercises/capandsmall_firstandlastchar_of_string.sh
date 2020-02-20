
# sed command way
str="Hello world"
length=${#str}
echo $length
echo $str | sed "s/./\U&/$length" | sed 's/./\U&/1'
#################3


echo "enter string :" 
read apple
y=${#apple}; y=$(( $y-1 ))
Middlestring=${apple:1:${y}}
echo $Middlestring
lastletter=${Middlestring: -1}
# lastletter=`echo $apple | cut -c1-1`
firstleter=${apple:0:1}
capfirst="${firstleter^}"
caplast=`echo $lastletter | tr '[:lower:]' '[:upper:]'`
str=$capfirst$Middlestring$caplast
echo " final string: $str "