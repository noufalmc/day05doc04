#!/bin/bash
echo "Enter three numbers"
read a;
read b;
read c;
firstValue=$(($a+($b*$c)))
secondValue=$((($a%$b)+$c))
thirdValue=$((($c+$a)/$b))
fourthValue=$((($a*$b)+$c))
echo "$firstValue, $secondValue,  $thirdValue,$fourthValue";
max=$firstValue;
min=$firstValue;
if [ $secondValue -gt $max ]
 then
    max=$secondValue;
elif [ $secondValue -lt $min ]
 then
    min=$secondValue

fi
if [ $thirdValue -gt $max ]
then
    max=$thirdValue
elif [ $thirdValue -lt $min ]
then
    min=$thirdValue
fi
if [ $fourthValue -gt $max ]
then
    max=$fourthValue;
elif [ $fourthValue -lt $min ]
then
    min=$fourthValue;
fi

echo "Maximum and Minimum Number is $max,$min"