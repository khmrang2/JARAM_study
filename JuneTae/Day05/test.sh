#!/bin/bash

while getopts ":h:b:" opt
do
	case $1 in
		h)
			echo "hello"
			;;
		b)
			echo "bye"
          		;;
		\?)
			echo >&2 "ERR: Invalid option: -$OPTARG"
			exit 1
		        ;;
	esac
done
