#!/bin/bash

echo "$num1 + $num2 = ?"
if ["$3" == "-t"]; then 
	sleep 1
fi
echo "$((num1+num2))" 
