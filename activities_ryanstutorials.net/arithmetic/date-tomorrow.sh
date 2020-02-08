#! /bin/bash
date  --date="tomorrow"
date  --date="next year"
#use fortnight for 14 day.
date --date='fortnight'
date --date='fortnight ago'
date --date='5 fortnight ago'
date --date='2 hour'
date --date='2 hour ago'
date --date='20 minute'
date --date='20 minute ago'
date --date='last Friday'
date --date='this Friday'
date --date='-2 months 5 day ago'
echo " yesterday" ;  date -d "-1 days"

yest=$(date --date="yesterday")
echo "$yest"
yest=$(date --date="yesterday" +"%d/%m/%Y")
echo "The backup was last verified on $yest"

# Tomowwo date 
echo tomoow date : `date -d '+1 day'`
