#!/bin/bash
# Internal Field Separator (Separador de Campos Internos)

echo Usuarios con mail y bash > /var/listado.txt
cat /etc/passwd | while IFS=: read -r username _ _ _ _ homedir shell; do	
	if [[ $homedir == /home/* ]]; then 
		if [[ $shell == /bin/bash ]]; then 
			if [ -z `find $homedir -name mailDir.*` ]; then
				echo $username >> /var/listado.txt
			fi
		fi		
	fi
done

