if [ $# -eq 3 ]; then
	case $1 in
		"+")
			expr $2 + $3
		;;
		"-")
			expr $2 - $3
		;;
		"*")
			expr $2 \* $3
		;;
		"%")
			expr $2 % $3
		;;	
		*)
		echo "La operación ingresada no coincide con las aceptadas: +, -, *, %"
		;;
	esac
else 
	echo "No enviaste los argumentos necesarios: op num1 num2"
fi 
