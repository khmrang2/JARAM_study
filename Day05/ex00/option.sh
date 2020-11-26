#!/bin/bash
args=${1}

if [ "${args}" == "-h" ]; then
	echo "hello"
elif [ "${args}" == "-b" ]; then
	echo "bye"
else
	echo "wrong parameter"
fi

exit 0
