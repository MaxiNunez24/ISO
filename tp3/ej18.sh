#!/bin/bash
# Crear un script que verifique cada 10 segundos si un usuario se ha loqueado en el sistema
# (el nombre del usuario será pasado por parámetro). Cuando el usuario finalmente se loguee,
# el programa deberá mostrar el mensaje ”Usuario ZZZ logueado en el sistema” y salir.

if [ $# -ne 1 ]; then
	echo Por favor ingrese un usuario
	exit 1
fi

SECONDS=0
login=true

while $login; do
	if [ $SECONDS -eq 10 ]; then
		SECONDS=0
		if [ -n $(who | grep $1) ]; then
			echo Usuario $1 logueado en el sistema
			$login=false
		fi	
	fi
done
