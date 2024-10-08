echo "Ingrese dos números"
read num1 num2
echo "La multiplicación de los números es: " 
expr $num1 \* $num2
echo "La suma de los números es: "
expr $num1 + $num2
echo "La resta de los números es: "
expr $num1 - $num2
if [ $num1 -gt $num2 ]; then
	echo "$num1 es mayor a $num2"

elif [ $num2 -gt $num1 ]; then
	echo "$num2 es mayor a $num1"

else
	echo "$num1 es igual a $num2"
fi

