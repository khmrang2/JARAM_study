#!/bin/bash

for var in $(ls | grep -E '#$|~$|^#')
do
	echo $var
	rm $var
done
