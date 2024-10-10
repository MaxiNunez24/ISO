if [ $# -eq 2 ]; then
	echo "La multiplicación de los números es: " 
	expr $1 \* $2
	echo "La suma de los números es: "
	expr $1 + $2
	echo "La resta de los números es: "
	expr $1 - $2
	if [ $1 -gt $2 ]; then
		echo "$1 es mayor a $2"
	elif [ $2 -gt $1 ]; then
		echo "$2 es mayor a $1"
	else
		echo "$1 es igual a $2"
	fi
else 
	echo "No has enviado los dos números requeridos por parámetro"
fi
