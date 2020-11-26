#!/bin/bash
param0=${1}
param1=${2}
param2=${3}
if [ "$param0" == "-t" ]; then
	param0=$param1
	param1=$param2
	param2="-t"
fi
echo "$param0 + $param1 = ?"
if [ "$param2" == "-t" ]; then
	sleep 1s
fi
echo $((param0+param1))
exit 0
