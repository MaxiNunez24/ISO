#!/bin/bash
function push {
	stack=("$1 ${stack[@]}")
}

pop(){
	lenght=${#stack[@]}
	
	if [ $lenght -ne 0 ]; then
		echo ${stack[$((lenght -1))]}
		unset ${stack[$((lenght -1))]}
	fi
}


lenght(){
	echo ${#stack[*]}
}

print(){
	echo ${stack[@]}
}

stack=(1 2 3 4 5)
lenght
push 7
print
push 3
pop
lenght
print
