#!/bin/bash

if [ "$1" == "-h" ]; then
	echo "hello"
	exit 0
elif [ "$1" == "-b" ]; then
	echo "bye"
	exit 0
fi
