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
max=0;min=0;
if [ $firstValue -gt $secondValue ]
then
     
     if [ $firstValue -gt $thirdValue ]
     then
         min=$thirdValue;
         if [ $firstValue -gt  $fourthValue ]
        then
            max=$firstValue;
        else
            max=$fourthValue
        fi        
     elif [ $thirdValue -gt $fourthValue ]
     then
         max=$thirdValue
     else
         max=$fourthValue
     fi
elif [ $secondValue -gt $thirdValue ]
min=$thirdValue;
then
     if [ $secondValue -gt $fourthValue ]
     then
        max=$secondValue;
     else
        max=$fourthValue
     fi
elif [ $thirdValue -gt $fourthValue ]
min=$fourthValue;
then
      echo "g"
else
    max=$fourthValue;
fi
echo "Maximum No is $max and Minimum $min";
