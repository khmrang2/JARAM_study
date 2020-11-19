#!/bin/bash

echo "$1 + $2 = ?"
if [ "$3" == "-t" ]; then
	sleep 1
fi
echo `expr $1 + $2`
