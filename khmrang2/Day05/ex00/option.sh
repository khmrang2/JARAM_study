#!/bin/bash
for i in "$@" # 단일문자열 이라네요 ㅇㅅㅇ 우리가 입력받는 옵션이 한개라서 이게 가능한가봄 ㅇㅅㅇ..
do
case $i in
	-h)
		echo "hello";;
	-b)
		echo "bye";;
esac
done
