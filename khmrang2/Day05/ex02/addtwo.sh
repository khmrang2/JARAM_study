#!/bin/bash
a="t"
t="t"
case ${1} in
	-t)
		a="f"
		;;
esac

if [ "${a}" == "${t}" ] ; then # 자꾸 오류가 나는게 if [ ㅆㄹㅆㄹ ]처럼 대괄호 와 문자사이에 띄어쓰기해야함
	# b=`expr $1 + $2` expr 대충 산술연산함수? 명령어 인데 공백으로 연산자와 피연산자를 구분해야함..귀찮.. .
	printf "%d + %d = ?\n%d\n" ${1} ${2} `expr $1 + $2` 
else
	#b=`expr $2 + $3`
	printf "%d + %d = ?\n" ${2} ${3} 
	sleep 1
	printf "%d\n" `expr $2 + $3`
fi



