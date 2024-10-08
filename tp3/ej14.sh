#!/bin/bash
if [ $# -lt 3 ]; then
	echo "Por favor ingrese un directorio, -a o -b y una cadena"
else
	if [ -d $1 ]; then
		case $2 in 
			-a) 
				for arc in $(ls "$1"); do 
					mv "$1/$arc" "$1/${arc}$3"
				done
			;;
			-b)
				for arc in $(ls "$1"); do
					mv "$1/$arc" "$1/${3}$arc"
				done
			;;
			*)
				echo "Por favor ingrese un parámetro válido (-a o -b)"
			;;
		esac
	else
		echo "$1 No es un directorio existente"
	fi
fi				
		
