#!/bin/bash
if [ -z "$1" ]; then
	echo "Por favor ingrese nombre de archivo o directorio"
	exit 1
elif [ -e "$1" ]; then 
	if [ -d "$1" ]; then
		echo "$1 es un directorio"
	elif [ -f "$1" ]; then
		echo "$1 es un archivo"
	else 
		echo "$1 existe pero no es un archivo ni un directorio regular"
	fi
else
	echo "$1 no existe. Creando directorio con ese nombre..."
	mkdir "$1"
	if [ $? -eq 0 ]; then
		echo "Directorio '$1' creado existosamente."
	else 
		echo "Error: No se pudo crear el directorio '$1'."
		exit 1
	fi
fi	

