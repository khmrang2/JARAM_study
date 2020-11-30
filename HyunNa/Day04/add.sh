NBR1=bcbcb
NBR2=43353
echo $NBR1 + $NBR2 | sed 's/a/5/g' | sed 's/b/4/g' | sed 's/c/3/g' | tr "543" "012" | xargs echo "ibase=3; obase=4;" | bc | tr "0123" "AJMR"

