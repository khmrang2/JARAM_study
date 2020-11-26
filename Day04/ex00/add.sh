#!/bin/bash
echo "Enter the NBR1"
read nbr1
echo "Enter the NBR2"
read nbr2
a=`echo $nbr1 | tr 'a-c' '0-2'`
b=`echo $nbr2 | tr '5' '0' | tr '4' '1' | tr '3' '2'`
tmp1=`echo "ibase=3; $a" | bc`
tmp2=`echo "ibase=3; $b" | bc`
a=`expr $tmp1 + $tmp2`
b=`echo "obase=4; $a" | bc`
a=`echo $b | tr '0' 'A' | tr '1' 'J' | tr '2' 'M' | tr '3' 'R'`
echo $a

exit 0
