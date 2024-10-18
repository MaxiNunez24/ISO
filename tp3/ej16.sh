#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Por favor ingrese una extensión como parámetro"
	exit 1
fi	

extension=$1

#Inicializar el archivo reporte.txt
echo "Usuario		Cantidad de archivos con la extensión .$extension" > reporte.txt

#Leer etc/passwd y filtrar los usuarios con directorio /home
cat /etc/passwd | while IFS=: read -r username _ _ _ _ homedir _; do
	if [[ $homedir == /home/* ]]; then
		#Contar los archivos con la extensión en el home del usuario
		count=$(find "$homedir" -type f -name "*.$extension" 2>/dev/null | wc -l)
		#2>dev/null redirige cualquier mensaje de error al archivo especial dev/null
		
		if [ $count -gt 0 ]; then
			echo "$username		$count" >> reporte.txt
		fi
	fi
done

echo "Reporte generado en reporte.txt"


