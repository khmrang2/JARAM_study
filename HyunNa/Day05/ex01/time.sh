#!/bin/bash

i=0

while [ $i -lt 5]
do
	ehco "hello"
	sleep 1
	((i++))
done
