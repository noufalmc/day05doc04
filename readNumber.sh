#!/bin/bash
echo "Enter Number"
read num;
thousand=$(($num/1000))
rem=$(($num%1000))
hundred=$(($rem/100))
rem=$(($rem%100))
ten=$(($rem/10))
rem=$(($rem%10))
unit=$(($rem/1))
echo "Thousand $thousand hundred $hundred ten $ten Unit $unit"
 
