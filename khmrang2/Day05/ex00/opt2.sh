#!/bin/bash

while getopts "hb" opt

do
	case $opt in
		h)
			echo "hello"
			;;
		b)
			echo "bye"
			;;
	esac
done

