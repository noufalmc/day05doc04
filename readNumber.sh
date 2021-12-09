#!/bin/bash
echo "Enter Number"
read num;
thousand=0;
rem=0;
hundred=0;
ten=0;
units=0;
if [ $num -gt 999 ]
then
     thousand=$(($num/1000))
     rem=$(($num%1000))
     hundred=$(($rem/100))
     rem=$(($rem%100))
     ten=$(($rem/10))
     rem=$(($rem%10))
     unit=$(($rem/1))
elif [ $num -gt 99 ]
then
    hundred=$(($num/100))
     rem=$(($num%100))
     ten=$(($rem/10))
     rem=$(($rem%10))
     unit=$(($rem/1))
elif  [ $num -gt 9 ]
then
     ten=$(($num/10))
     rem=$(($num%10))
     unit=$(($rem/1))
else
      rem=$(($num%10))
      unit=$(($rem/1))
fi
echo "Thousand $thousand hundred $hundred ten $ten Unit $unit"
 
