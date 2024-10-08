if [ $# -eq 3 ]; then
	case $1 in
		suma)
			expr $2 + $3
		;;
		resta)
			expr $2 - $3
		;;
		multi)
			expr $2 \* $3
		;;
		mod)
			expr $2 % $3
		;;	
		*)
		echo "La operación ingresada no coincide con las aceptadas: suma, resta, multi, mod"
		;;
	esac
else 
	echo "No enviaste los argumentos necesarios: op num1 num2"
fi 
