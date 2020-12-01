#!/bin/bash
a=0
for i in "$@"
do
	case $i in
		-c)
			a=1;;
esac
done

cd src

echo --------------------------------------------------------------
echo 채점 프로그램을 시작합니다.
echo init 옵션 확인중..
if [ $a -eq 1 ]; then
	echo 초기화 확인되었습니다.
	for check_list in `cat dir_eval_for_C.txt` `cat dir_eval_for_py.txt`
	do
		cd ../ans/$check_list
		sleep 0.2
		echo $check_list result.txt, diff.txt 삭제 완료
		rm -rf result.txt
		rm -rf diff.txt
		cd ../../src
	done
	exit
fi
echo 채점할 파일들을 불러오는 중...
for check_list in `cat dir_eval_for_C.txt` `cat dir_eval_for_py.txt`
do
	sleep 0.5
	echo $check_list 확인되었습니다.
done
echo --------------------------------------------------------------
# C eval source code
for dir in `cat dir_eval_for_C.txt`
do
	if [ -d $dir ]; then
		src_dir="$dir"
		echo $dir 을 채점합니다.
		sleep 0.5
		cd $dir
		answer_dir="../../ans/$dir"
		make all
		if [ -e input.txt ];then
			for LINE in `cat input.txt`
			do
				./*.out $LINE > result.txt
			done
		else
			./*.out > result.txt
		fi

		cp result.txt $answer_dir/result.txt
		make fclean
		rm -rf result.txt
		cd $answer_dir

		diff -d answer.txt result.txt &> diff.txt
		
		sleep 0.5
		size=$(stat -c%s diff.txt)
		if [ $size -eq 0 ]; then
			echo -e "\033[31m"정답 여부 : correct!"\033[0m"
		else
			echo -e "\033[31m"정답 여부 : incorrect!"\033[0m"
			diff -c answer.txt result.txt 
		fi
	        cd ../../src
		echo --------------------------------------------------------------
	fi
done

#python eval source code
for dir in `cat dir_eval_for_py.txt`
do
	if [ -d $dir ]; then
		src_dir="$dir"
		echo $dir 을 채점합니다!
		sleep 0.5
		cd $dir
		answer_dir="../../ans/$dir"
		if [ -e input.txt ];then
			make all < input.txt > result.txt
		else
			make all > result.txt
		fi

		cp result.txt $answer_dir/result.txt
		rm -rf result.txt
		cd $answer_dir

		diff -d answer.txt result.txt &> diff.txt
		sleep 0.5
		size=$(stat -c%s diff.txt)
		if [ $size -eq 0 ]; then
			echo -e "\033[31m"정답 여부 : correct!"\033[0m"
		else
			echo -e "\033[31m"정답 여부 : incorrect!"\033[0m"
			diff -c answer.txt result.txt
		fi
		cd ../../src
		echo --------------------------------------------------------------
	fi
done
