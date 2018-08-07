#!/bin/bash
#
#
echo "Celsius to Fahrenheit Temperature Converter."
echo "In order to convert the temperature the shell script"
echo "Will follow the following formula:"
echo "       F=(Cx9/5)+32               "
echo "Enter your Temperature in (C) :"
read num_tc
tf="$(echo " scale=2;((9/5) * $num_tc) + 32"|bc )"
fah=$tf
echo "$num_tc Celsius = $fah Fahrenheit"
