#Create a Bash script which will print a message based upon which day of the week it is
# (eg. 'Happy hump day' for Wedensday, 'TGIF' for Friday etc).

hour=`date +%H`
if [ $hour -le 12 ]; then
    echo 'good morning'
elif [ $hour -ge 18 ]; then
    echo 'good evening'
else
    echo 'good afternoon'
fi

day=`date +%A`
dow=`date +%w`
echo $dow; echo $day
if [[ $dow -eq 1 ]]; then 
echo " bluess monday " 
elif [[ $dow -eq 2 ]]; then 
echo "ohh tueday!! to do something "
elif [[ $dow -eq 3 ]]; then 
echo "Its Wednesday!! Happy hump day! KFC woow "
elif [[ $dow -eq 4 ]]; then 
echo "Thusday, only one day for weekend "
elif [[ $dow -eq 5 ]]; then 
echo "Wowww TGIF!! "
elif [[ $dow -eq 6 ]]; then 
echo "Satuday , Friday night hangover "
elif [[ $dow -eq 7 ]]; then 
echo "lazzy sunday "
fi
