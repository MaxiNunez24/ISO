#!/bin/bash
function push {
	stack=($1 ${stack[@]})
}

pop(){
	lenght=${#stack[@]}
	
	if [ $lenght -ne 0 ]; then
		echo "${stack[0]}"
		unset stack[0]
		stack=(${stack[@]})
	fi
}


lenght(){
	echo ${#stack[*]}
}

print(){
	echo ${stack[@]}
}

stack=()

for ((i=0; i<10; i++)); do
	push $i
done

for i in {1..3}; do
	pop
done

lenght 

print
