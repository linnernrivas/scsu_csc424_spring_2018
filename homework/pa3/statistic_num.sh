#!/bin/bash
echo "****** Statistic of Numbers ******"
echo  "The script is based on input calculation:"
echo  "     - Sum     "
echo  "     - Average     "
echo  "     - Minimum     "
echo  "     - Maximum     "
echo  "from the input numbers will show a result"
echo -e "\n"

min=$((2**63-1))
max=0
echo "Please enter your numbers underneath:"
echo "First Number:"
read num1
echo "Second Number:"
read num2
echo "Third Number:"
read num3
echo "Fourth Number:"
read num4
echo "Fifth Number:"
read num5
echo -e "\n"

sum=$(($num1 + $num2 + $num3 + $num4 + $num5 ))
echo "Sum of the numbers are:" $sum

avg=$(echo $sum/5 |bc) 
echo "The averge for these numbers are:" $avg

prod=$(($num1 * $num2 * $num3 * $num4 * $num5|bc ))
echo "The product of the numbers are:" $prod
for ((i=1;i<6;i=$i+1))
do
        num=num$i
done
if [ $num -lt $min ]; then
	min=$num
fi
echo "The min number is: $min"
echo -e "\n"
if [ $num -gt $max ]; then
        max=$num
fi
echo "The max number is: $max"
