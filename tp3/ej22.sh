#!/bin/bash

num=($*)
total=1
productoria() {
	for i in ${num[*]}; do
		total=$(expr $total \* $i) 		
	done
}
echo ${num[*]}
productoria
echo $total

